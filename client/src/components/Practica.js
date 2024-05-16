import * as React from "react";
import { toast } from "react-toastify";
import { useSearchParams, useNavigate } from "react-router-dom";
import YouTube from "react-youtube";

import Box from "@mui/material/Box";
import Modal from "@mui/material/Modal";
import Grid from "@mui/material/Grid";
import CircularProgress from "@mui/material/CircularProgress";
import Stepper from "@mui/material/Stepper";
import Step from "@mui/material/Step";
import StepButton from "@mui/material/StepButton";
import Button from "@mui/material/Button";
import Typography from "@mui/material/Typography";
import CardMedia from "@mui/material/CardMedia";
import ChevronLeftIcon from "@mui/icons-material/ChevronLeft";
import ListSubheader from "@mui/material/ListSubheader";
import List from "@mui/material/List";
import ListItemButton from "@mui/material/ListItemButton";
import ListItemIcon from "@mui/material/ListItemIcon";
import ListItemText from "@mui/material/ListItemText";
import SchoolIcon from "@mui/icons-material/School";
import CategoryIcon from "@mui/icons-material/Category";
import CheckCircleIcon from "@mui/icons-material/CheckCircle";
import ScoreIcon from "@mui/icons-material/Score";
import RestartAltIcon from "@mui/icons-material/RestartAlt";
import { YoutubeEmbed, styleVocabloModal } from "./VocabloModal";
import sendLogs from "../utils/sendLogs";

import CustomToast from "./CustomToast";

const consultas_por_grado = [
  5, // preescolar
  5, // 1er grado
  5, // 2do grado
  5, // tercer grado
  10, // 4to grado
  15, // 5to grado
  15, // 6to grado
];

const opciones_por_grado = [
  8, // preescolar
  8, // 1er grado
  10, // 2do grado
  5, // tercer grado
  15, // 4to grado
  20, // 5to grado
  20, // 6to grado
];
const REWARD_GOOD_RESPONSE = [
  {
    message: "Bien",
    imageSrc: "/assets/rewards/reward-bien.png",
  },
  {
    message: "Aprobado",
    imageSrc: "/assets/rewards/reward-aprobado.png",
  },
  {
    message: "Perfecto",
    imageSrc: "/assets/rewards/reward-perfecto.png",
  },
];

const REWARD_BAD_RESPONSE = [
  {
    message: "Incorrecto",
    imageSrc: "/assets/rewards/reward-incorrecto.png",
  },
  {
    message: "Te Equivocaste",
    imageSrc: "/assets/rewards/reward-te-equivocaste.png",
  },
  {
    message: "Te Confundiste",
    imageSrc: "/assets/rewards/reward-te-confundiste.png",
  },
];

const REWARD_CORRECTED_RESPONSE = [
  {
    message: "Bien",
    imageSrc: "/assets/rewards/reward-bien.png",
  },
];

// const steps = ['Select campaign settings', 'Create an ad group', 'Create an ad'];

export const styleTrofeoModal = {
  position: "absolute",
  top: "50%",
  left: "50%",
  transform: "translate(-50%, -50%)",
  width: "300px",
  minHeight: "300px",
  bgcolor: "background.paper",
  border: "1px solid #666",
  borderRadius: "16px",
  boxShadow: 24,
  p: 4,
  display: "flex",
  flexDirection: "column",
  justifyContent: "center",
};

function shuffle(array) {
  let currentIndex = array.length;

  // While there remain elements to shuffle...
  while (currentIndex != 0) {
    // Pick a remaining element...
    let randomIndex = Math.floor(Math.random() * currentIndex);
    currentIndex--;

    // And swap it with the current element.
    [array[currentIndex], array[randomIndex]] = [
      array[randomIndex],
      array[currentIndex],
    ];
  }
}

function generateConsultas({ vocablos, numeroConsultas }) {
  // const numeroConsultas = configuracion.cantidad_vocablos
  const palabras = vocablos.map((elem) => elem.vocablo_palabra);

  const n =
    numeroConsultas <= vocablos.length ? numeroConsultas : vocablos.length;

  const vocablosCopy = vocablos.slice(0);

  const consultas = [];

  // const tiposConsultas = ['image', 'video'];
  const tiposConsulta = ["image", "video"];

  for (let i = 0; i < n; i++) {
    // const element = array[i];
    const randomIndex = Math.floor(Math.random() * vocablosCopy.length);
    const vocablo = vocablosCopy.splice(randomIndex, 1)[0];

    const indexImage =
      vocablo && vocablo.recursos
        ? vocablo.recursos.findIndex((elem) => elem.tipo === "image")
        : -1;
    let imageSrc;
    const indexVideo =
      vocablo && vocablo.recursos
        ? vocablo.recursos.findIndex((elem) => elem.tipo === "video")
        : -1;
    let videoSrc;

    if (indexImage !== -1) {
      imageSrc = vocablo.recursos[indexImage].enlace;
    }

    if (indexVideo !== -1) {
      videoSrc = vocablo.recursos[indexVideo].enlace;
    }

    vocablo.imageSrc = imageSrc;
    vocablo.videoSrc = videoSrc;

    const randomIndex2 = Math.floor(Math.random() * tiposConsulta.length);
    vocablo.tipo_consulta = tiposConsulta[randomIndex2];

    consultas.push(vocablo);
  }

  for (let i = 0; i < consultas.length; i++) {
    const consulta = consultas[i];
    const currentPalabra = consulta.vocablo_palabra;
    const palabrasCopy = palabras.filter(
      (palabra) => palabra !== currentPalabra
    );

    const palabrasConsulta = [currentPalabra];

    const randomIndex1 = Math.floor(Math.random() * palabrasCopy.length);
    palabrasConsulta.push(palabrasCopy.splice(randomIndex1, 1)[0]);
    const randomIndex2 = Math.floor(Math.random() * palabrasCopy.length);
    palabrasConsulta.push(palabrasCopy.splice(randomIndex2, 1)[0]);

    // const palabras_consulta = [];

    // const randomIndex3 = Math.floor(Math.random() * palabrasConsulta.length);
    // palabras_consulta.push(palabrasConsulta.splice(randomIndex3, 1)[0]);

    // const randomIndex4 = Math.floor(Math.random() * palabrasConsulta.length);
    // palabras_consulta.push(palabrasConsulta.splice(randomIndex4, 1)[0]);

    // palabras_consulta.push(palabrasConsulta[0]);

    shuffle(palabrasConsulta);

    // consultas[i].palabras_consulta = palabras_consulta;
    consultas[i].palabras_consulta = palabrasConsulta;
  }

  return consultas;
}

function hasTrofeoAgil({ consultas, secondsByConsulta = 5 }) {
  if (!consultas || consultas.length === 0) {
    return false;
  }

  const totalConsultas = consultas.length;
  let totalConsultasCorrectas = 0;

  for (const consulta of consultas) {
    if (consulta.vocablo_palabra === consulta.responses[0]) {
      totalConsultasCorrectas += 1;
    }

    if (!consulta.responses || !consulta.logs) {
      return false;
    }
  }

  const firstLog = consultas[0].logs[0];
  const lastLog =
    consultas[consultas.length - 1].logs[
      consultas[consultas.length - 1].logs.length - 1
    ];

  const firstTimestamp = new Date(firstLog.timestamp).getTime();
  const lastTimestamp = new Date(lastLog.timestamp).getTime();
  const diff = lastTimestamp - firstTimestamp;

  if (
    diff > 0 &&
    diff <= secondsByConsulta * 1000 &&
    totalConsultas === totalConsultasCorrectas
  ) {
    return true;
  }

  return false;
}

function getResultsFunc({ consultas }) {
  if (!consultas || consultas.length === 0) {
    return undefined;
  }

  try {
    const totalConsultas = consultas.length;
    let totalConsultasCorrectas = 0;
    let points = 0;

    consultas.forEach((elem) => {
      if (elem.vocablo_palabra === elem.responses[0]) {
        totalConsultasCorrectas += 1;
      }
    });

    points = totalConsultasCorrectas * 100;

    return {
      totalConsultas,
      totalConsultasCorrectas,
      points,
      trofeos_imparables: totalConsultas === totalConsultasCorrectas ? 1 : 0,
      trofeos_agil: hasTrofeoAgil({ consultas }) ? 1 : 0,
    };
  } catch (err) {
    // Las consultas no estan completas
  }

  return undefined;
}

function getPracticaDataFunc({ consultas, vocablos }) {
  if (!consultas || consultas.length === 0) {
    return undefined;
  }

  if (!vocablos || vocablos.length === 0) {
    return undefined;
  }

  for (const consulta of consultas) {
    if (!consulta.responses) {
      return undefined;
    }
  }

  const voablosObj = vocablos.reduce((prev, current) => {
    prev[current.vocablo_palabra] = current;

    return prev;
  }, {});

  const practicaData = {
    id: undefined,
    fecha: new Date().toISOString(),
    total_consultas: 0,
    total_correctas: 0,
    usuario_id: null,
    tema_id: consultas[0].tema_id,
    grado_id: consultas[0].grado_id,
    cancelada: false,
  };

  const consultasData = [];

  const totalConsultas = consultas.length;
  let totalConsultasCorrectas = 0;

  for (const consulta of consultas) {
    if (consulta.vocablo_palabra === consulta.responses[0]) {
      totalConsultasCorrectas += 1;
    }

    const consultaRespuesta = voablosObj[consulta.responses[0]];

    console.log({ voablosObj, consulta, response: consulta.responses });

    consultasData.push({
      id: undefined,
      tipo: consulta.tipo_consulta,
      vocablo_correcto_id: consulta.vocablo_id,
      vocablo_respuesta_id: consultaRespuesta.vocablo_id,
      practica_id: null,
    });
  }

  practicaData.total_consultas = totalConsultas;
  practicaData.total_correctas = totalConsultasCorrectas;

  return {
    practica: practicaData,
    consultas: consultasData,
    puntos: totalConsultasCorrectas * 100,
    trofeos_imparables: totalConsultas === totalConsultasCorrectas ? 1 : 0,
    trofeos_agil: hasTrofeoAgil({ consultas }) ? 1 : 0,
  };
}

function getPracticaLogsFunc({ consultas }) {
  if (!consultas || consultas.length === 0) {
    return undefined;
  }

  for (const consulta of consultas) {
    if (!consulta.responses) {
      return undefined;
    }
  }

  const logPractica = {
    log_name: "Práctica",
    timestamp: new Date().toISOString(),
    grado: consultas[0].grado_nombre,
    tema: consultas[0].tema_nombre,
    total_consultas: 0,
    total_correctas: 0,
    logs: [],
  };

  const totalConsultas = consultas.length;
  let totalConsultasCorrectas = 0;

  for (const consulta of consultas) {
    if (consulta.vocablo_palabra === consulta.responses[0]) {
      totalConsultasCorrectas += 1;
    }

    if (consulta.logs && consulta.logs.length > 0) {
      logPractica.logs.push(...consulta.logs.slice(0));
    }
  }

  logPractica.total_consultas = totalConsultas;
  logPractica.total_correctas = totalConsultasCorrectas;

  return [
    logPractica,
    {
      log_name: "Aprendiz: Termina una práctica",
      timestamp: new Date().toISOString(),
      grado: consultas[0].grado_nombre,
      tema: consultas[0].tema_grado,
    },
    // {
    //   "log_name": "Sistema: Muestra gamificación al finalizar práctica",
    //   "timestamp": new Date().toISOString(),
    //   "mensaje": "!Impresionante nombre!, lograste un puntaje muy alto en el desafio ¡sigue asi!",
    //   "gif": "felicitar002.gif"
    // },
  ];
}

function getPracticaCanceladaDataFunc({ consultas, vocablos }) {
  if (!consultas || consultas.length === 0) {
    return undefined;
  }

  if (!vocablos || vocablos.length === 0) {
    return undefined;
  }

  // for (const consulta of consultas) {

  //   if (!consulta.responses) {
  //     return undefined;
  //   }
  // }

  const voablosObj = vocablos.reduce((prev, current) => {
    prev[current.vocablo_palabra] = current;

    return prev;
  }, {});

  const practicaData = {
    id: undefined,
    fecha: new Date().toISOString(),
    total_consultas: 0,
    total_correctas: 0,
    usuario_id: null,
    tema_id: consultas[0].tema_id,
    grado_id: consultas[0].grado_id,
    cancelada: true,
  };

  const consultasData = [];

  const totalConsultas = consultas.length;
  let totalConsultasCorrectas = 0;

  for (const consulta of consultas) {
    if (!consulta.responses) {
      continue;
    }

    if (consulta.vocablo_palabra === consulta.responses[0]) {
      totalConsultasCorrectas += 1;
    }

    const consultaRespuesta = voablosObj[consulta.responses[0]];

    console.log({ voablosObj, consulta, response: consulta.responses });

    consultasData.push({
      id: undefined,
      tipo: consulta.tipo_consulta,
      vocablo_correcto_id: consulta.vocablo_id,
      vocablo_respuesta_id: consultaRespuesta.vocablo_id,
      practica_id: null,
    });
  }

  practicaData.total_consultas = totalConsultas;
  practicaData.total_correctas = totalConsultasCorrectas;

  return {
    practica: practicaData,
    consultas: consultasData,
    puntos: 0,
    trofeos_imparables: 0,
    trofeos_agil: 0,
  };
}

function getPracticaCanceladaLogsFunc({ consultas }) {
  if (!consultas || consultas.length === 0) {
    return undefined;
  }

  // for (const consulta of consultas) {

  //   if (!consulta.responses) {
  //     return undefined;
  //   }
  // }

  const logPractica = {
    log_name: "Práctica",
    timestamp: new Date().toISOString(),
    grado: consultas[0].grado_nombre,
    tema: consultas[0].tema_nombre,
    total_consultas: 0,
    total_correctas: 0,
    cancelada: true,
    logs: [],
  };

  const totalConsultas = consultas.length;
  let totalConsultasCorrectas = 0;

  for (const consulta of consultas) {
    if (!consulta.responses && !consulta.logs) {
      continue;
    }

    if (consulta.logs && consulta.logs.length > 0) {
      logPractica.logs.push(...consulta.logs.slice(0));
    }
  }

  logPractica.total_consultas = totalConsultas;
  logPractica.total_correctas = totalConsultasCorrectas;

  return [
    logPractica,
    {
      log_name: "Aprendiz: Cancela la práctica",
      timestamp: new Date().toISOString(),
      grado: consultas[0].grado_nombre,
      tema: consultas[0].tema_grado,
    },
    // {
    //   "log_name": "Sistema: Muestra gamificación al finalizar práctica",
    //   "timestamp": new Date().toISOString(),
    //   "mensaje": "!Impresionante nombre!, lograste un puntaje muy alto en el desafio ¡sigue asi!",
    //   "gif": "felicitar002.gif"
    // },
  ];
}

export default function HorizontalNonLinearStepper() {
  const [activeStep, setActiveStep] = React.useState(0);
  const [completed, setCompleted] = React.useState({});
  const [steps, setSteps] = React.useState([]);
  const [results, setResults] = React.useState({});

  const [query, setQuery] = useSearchParams();
  const [loading, setLoading] = React.useState(false);
  const [gradoTitle, setGradoTitle] = React.useState();
  const [temaTitle, setTemaTitle] = React.useState();

  const [wordCount, setWordCount] = React.useState(0);
  const [categories, setCategories] = React.useState([]);
  const [questionType, setQuestionType] = React.useState("");
  const [responseType, setResponseType] = React.useState("");
  const [temas, setTemas] = React.useState([]);
  const [vocablos, setVocablos] = React.useState([]);

  const grado = query.get("grado");
  const tema = query.get("tema");
  const navigate = useNavigate();

  const getVocablos = async () => {
    try {
      setLoading(true);

      // obtener configuracion
      const response = await fetch(`/configuracion/${grado}`, {
        method: "GET",
        headers: {
          "Content-type": "application/json",
          token: localStorage.token,
        },
      });

      const responseData = await response.json();
      setWordCount(responseData.cantidad_vocablos);
      setCategories(responseData.categorias_id);
      setQuestionType(responseData.tipo_pregunta);
      setResponseType(responseData.tipo_respuesta);

      // obtener temas del grado
      const response2 = await fetch(`/temas-by-grado/${grado}`, {
        method: "GET",
        headers: {
          "Content-type": "application/json",
          token: localStorage.token,
        },
      });

      const responseData2 = await response2.json();
      const gradoTitle =
        responseData2 && responseData2[0]
          ? responseData2[0].grado_nombre
          : null;

      setTemas(responseData2);
      setGradoTitle(gradoTitle);

      // obtener vocablos de cada tema

      let allVocablos = [];

      for (const tema of responseData2) {
        if (tema.es_categoria) {
          const response = await fetch(
            `/vocablos-by-grado-tema/${grado}/${tema.tema_id}/100`,
            {
              method: "GET",
              headers: {
                "Content-type": "application/json",
                token: localStorage.token,
              },
            }
          );

          const responseData = await response.json();

          allVocablos.push(...responseData);

          setVocablos((prevVocablos) => [...prevVocablos, ...responseData]);
        }
      }

      setLoading(false);

      const consultas = generateConsultas({
        vocablos:
          responseData.categorias_id.length > 0
            ? allVocablos.filter((elem) =>
                responseData.categorias_id.includes(elem.tema_id)
              )
            : allVocablos,
        numeroConsultas: responseData.cantidad_vocablos,
        // configuracion: responseData
      });

      const newConsultas = addLogsToConsulta({
        logs: [
          {
            log_name: "Sistema: Inicia una consulta",
            timestamp: new Date().toISOString(),
            tipo_consulta: consultas[0].tipo_consulta,
            palabras: consultas[0].palabras_consulta.slice(0),
            respuesta_correcta: consultas[0].vocablo_palabra,
          },
        ],
        consultas,
        index: 0,
      });

      setSteps(newConsultas);

      sendLogs({
        logs: [
          {
            log_name: "Aprendiz: Inicia una práctica",
            timestamp: new Date().toISOString(),
            grado: newConsultas[0].grado_nombre,
            tema: newConsultas[0].tema_nombre,
          },
        ],
      });
    } catch (err) {
      console.error(err);
      toast.error("Error de red");
    }
  };

  React.useEffect(() => {
    getVocablos();
  }, []);

  const totalSteps = () => {
    return steps.length;
  };

  const completedSteps = () => {
    return Object.keys(completed).length;
  };

  const isLastStep = () => {
    return activeStep === totalSteps() - 1;
  };

  const allStepsCompleted = () => {
    return completedSteps() === totalSteps();
  };

  const handleNext = () => {
    const newActiveStep =
      isLastStep() && !allStepsCompleted()
        ? // It's the last step, but not all steps have been completed,
          // find the first step that has been completed
          steps.findIndex((step, i) => !(i in completed))
        : activeStep + 1;

    if (steps[newActiveStep] && !steps[newActiveStep].logs) {
      const newConsultas = addLogsToConsulta({
        logs: [
          {
            log_name: "Sistema: Inicia una consulta",
            timestamp: new Date().toISOString(),
            tipo_consulta: steps[newActiveStep].tipo_consulta,
            palabras: steps[newActiveStep].palabras_consulta.slice(0),
            respuesta_correcta: steps[newActiveStep].vocablo_palabra,
          },
        ],
        consultas: steps,
        index: newActiveStep,
      });
      setSteps(newConsultas);
    }

    setActiveStep(newActiveStep);
    getResults({ consultas: steps });
    sendPracticaData({ consultas: steps });
    sendPracticaLogs({ consultas: steps });
  };

  // const handleBack = () => {
  //   setActiveStep((prevActiveStep) => prevActiveStep - 1);
  // };

  const handleStep = (step) => () => {
    setActiveStep(step);
  };

  const handleComplete = () => {
    const newCompleted = completed;
    newCompleted[activeStep] = true;
    setCompleted(newCompleted);
    handleNext();
  };

  const handleReset = () => {
    setActiveStep(0);
    setCompleted({});
    getVocablos();
  };

  const handleCancelPractica = async () => {
    const logs = getPracticaCanceladaLogsFunc({ consultas: steps });

    if (logs) {
      sendLogs({ logs });
    }

    const data = getPracticaCanceladaDataFunc({ consultas: steps, vocablos });

    if (data) {
      try {
        const response = await fetch("/practica", {
          method: "POST",
          headers: {
            "Content-type": "application/json",
            token: localStorage.token,
          },
          body: JSON.stringify(data),
        });

        if (response.status === 204) {
          const route = window.location.pathname.includes("prueba");
          if (route) {
            toast.success("Prueba cancelada");
            // navigate(`/dashboard/prueba?grado=${grado}&tema=${tema}`);
            navigate(`/dashboard/prueba?grado=${grado}`);
          } else {
            toast.success("Práctica cancelada");
            navigate(`/dashboard/estudiar?grado=${grado}&tema=${tema}`);
          }
        } else {
          toast.error("Error desconocido");
        }
      } catch (err) {
        // code to error action
        toast.error("Error de conexion");
      }
    }
  };

  console.log({ steps: steps.slice(0), completed, activeStep });

  /** Logica Practica */
  const [open, setOpen] = React.useState(false);
  const [currentToastId, setCurrentToastId] = React.useState(undefined);

  const setResponse = ({ palabra }) => {
    const consulta = steps[activeStep];

    if (!consulta.responses) {
      consulta.responses = [];
    }

    consulta.responses.push(palabra);

    setSteps(steps);

    if (currentToastId) {
      toast.dismiss(currentToastId);
    }

    if (consulta.vocablo_palabra === palabra) {
      let reward;
      if (
        consulta.responses &&
        consulta.responses[0] === consulta.vocablo_palabra
      ) {
        reward =
          REWARD_GOOD_RESPONSE[
            Math.floor(Math.random() * REWARD_GOOD_RESPONSE.length)
          ];
      } else {
        reward =
          REWARD_CORRECTED_RESPONSE[
            Math.floor(Math.random() * REWARD_CORRECTED_RESPONSE.length)
          ];
      }

      addLogsToActiveStep({
        logs: [
          {
            log_name: "Aprendiz: Responde una consulta",
            timestamp: new Date().toISOString(),
            respuesta_es_correcta: true,
            respuesta_usuario: palabra,
          },
          {
            log_name: "Sistema: Muestra gamificación por respuesta correcta",
            timestamp: new Date().toISOString(),
            mensaje: reward.message,
            image: reward.imageSrc,
          },
        ],
      });

      // const id = toast.success(reward.mensaje, {autoClose: 2000});
      const id = toast(
        <CustomToast imageSrc={reward.imageSrc} message={reward.message} />,
        { autoClose: 2000 }
      );
      setCurrentToastId(id);
      handleComplete();
    } else {
      const reward =
        REWARD_BAD_RESPONSE[
          Math.floor(Math.random() * REWARD_BAD_RESPONSE.length)
        ];

      addLogsToActiveStep({
        logs: [
          {
            log_name: "Aprendiz: Responde una consulta",
            timestamp: new Date().toISOString(),
            respuesta_es_correcta: false,
            respuesta_usuario: palabra,
          },
          {
            log_name: "Sistema: Muestra gamificación por respuesta incorrecta",
            timestamp: new Date().toISOString(),
            mensaje: reward.message,
            image: reward.imageSrc,
          },
          {
            log_name: "Sistema: Muestra corrección",
            timestamp: new Date().toISOString(),
            respuesta_correcta: consulta.vocablo_palabra,
          },
        ],
      });

      const id = toast(
        <CustomToast imageSrc={reward.imageSrc} message={reward.message} />,
        { autoClose: 2000 }
      );
      setCurrentToastId(id);
      // handleOpen(); // TODO: FIXME: uncomment to show Correction Vocablo-Modal
      handleComplete(); // TODO: FIXME: Remove to show Correction Vocablo-Modal
    }
  };

  const getResults = ({ consultas }) => {
    const resultsAux = getResultsFunc({ consultas });

    if (resultsAux) {
      setResults(resultsAux);
    }
  };

  const sendPracticaData = async ({ consultas }) => {
    const data = getPracticaDataFunc({ consultas, vocablos });

    if (data) {
      try {
        const response = await fetch("/practica", {
          method: "POST",
          headers: {
            "Content-type": "application/json",
            token: localStorage.token,
          },
          body: JSON.stringify(data),
        });

        if (response.status === 204) {
          toast.success("Práctica terminada correctamente");
        } else {
          toast.error("Error desconocido");
        }
      } catch (err) {
        // code to error action
        toast.error("Error de conexion");
      }
    }
  };

  const sendPracticaLogs = async ({ consultas }) => {
    const logs = getPracticaLogsFunc({ consultas });

    console.log({ logs });

    if (logs) {
      sendLogs({ logs });
    }
  };

  // Manejando logs

  const addLogsToConsulta = ({ logs, consultas, index }) => {
    if (!logs || logs.length === 0) {
      return consultas;
    }

    if (!consultas || consultas.length === 0) {
      return consultas;
    }

    if (typeof index !== "number") {
      return consultas;
    }

    if (!consultas[index].logs) {
      consultas[index].logs = [];
    }

    for (const log of logs) {
      consultas[index].logs.push(log);
    }

    const newConsultas = consultas.slice(0);

    return newConsultas;
  };

  const addLogsToActiveStep = ({ logs }) => {
    if (!logs || logs.length === 0) {
      return;
    }

    const newConsultas = addLogsToConsulta({
      logs,
      consultas: steps,
      index: activeStep,
    });

    setSteps(newConsultas);
  };

  // Vocablo modal

  const handleOpen = () => setOpen(true);
  const handleClose = () => {
    setOpen(false);
    addLogsToActiveStep({
      logs: [
        {
          log_name: "Aprendiz: Cierra modal de correción",
          timestamp: new Date().toISOString(),
        },
      ],
    });
  };

  const handleCloseEntendido = () => {
    setOpen(false);
    addLogsToActiveStep({
      logs: [
        {
          log_name: "Aprendiz: Indica que entendió corrección",
          timestamp: new Date().toISOString(),
        },
      ],
    });
  };

  const VocabloModal = ({ vocablo }) => {
    const indexImage =
      vocablo && vocablo.recursos
        ? vocablo.recursos.findIndex((elem) => elem.tipo === "image")
        : -1;
    let imageSrc;
    const indexVideo =
      vocablo && vocablo.recursos
        ? vocablo.recursos.findIndex((elem) => elem.tipo === "video")
        : -1;
    let videoSrc;

    if (indexImage !== -1) {
      imageSrc = vocablo.recursos[indexImage].enlace;
    }

    if (indexVideo !== -1) {
      videoSrc = vocablo.recursos[indexVideo].enlace;
    }

    return (
      <div>
        {vocablo ? (
          <Modal
            // keepMounted
            open={open}
            onClose={handleClose}
            aria-labelledby="keep-mounted-modal-title"
            aria-describedby="keep-mounted-modal-description"
          >
            <Box sx={styleVocabloModal}>
              <Grid
                container
                spacing={{ xs: 2, sm: 3, md: 3 }}
                columns={{ xs: 4, sm: 8, md: 8 }}
              >
                <Grid item xs={4} sm={4} md={4}>
                  <Typography id="keep-mounted-modal-title" variant="subtitle2">
                    Imagen
                  </Typography>
                  <CardMedia
                    component="img"
                    sx={{ width: 350, height: 300, objectFit: "contain" }}
                    // image={elem.tema_image_src}
                    image={imageSrc}
                    alt={`imagen del vocablo ${vocablo.vocablo_palabra}`}
                  />
                </Grid>
                <Grid item xs={4} sm={4} md={4}>
                  <Typography id="keep-mounted-modal-title" variant="subtitle2">
                    Video
                  </Typography>
                  <YoutubeEmbed embedLink={videoSrc} />
                </Grid>
                <Grid item xs={4} sm={4} md={4}>
                  <Typography
                    id="keep-mounted-modal-description"
                    variant="subtitle2"
                  >
                    Palabra
                  </Typography>
                  <Typography
                    id="keep-mounted-modal-title"
                    variant="h3"
                    component="h2"
                    style={{ backgroundColor: "yellow" }}
                  >
                    {vocablo.vocablo_palabra}
                  </Typography>
                </Grid>
                <Grid
                  item
                  xs={4}
                  sm={4}
                  md={4}
                  style={{
                    minHeight: "150px",
                    display: "flex",
                    justifyContent: "flex-end",
                    alignItems: "flex-end",
                    alignSelf: "stretch",
                  }}
                >
                  {/*<Button variant="text" color="error" onClick={handleClose}>Cerrar</Button>*/}
                  <Button
                    variant="contained"
                    color="success"
                    onClick={handleCloseEntendido}
                  >
                    Entendido
                  </Button>
                </Grid>
              </Grid>
            </Box>
          </Modal>
        ) : null}
      </div>
    );
  };

  // Trofeo

  const [openTrofeo, setOpenTrofeo] = React.useState(false);
  const [trofeoData, setTrofeoData] = React.useState();

  const handleCloseTrofeo = () => {
    const trofeoAux = trofeoData;
    setOpenTrofeo(false);
    setTrofeoData(undefined);

    if (trofeoAux.type === "imparable") {
      setResults({
        ...results,
        trofeos_imparables_showed: true,
        trofeo_showing: false,
      });
    } else if (trofeoAux.type === "agil") {
      setResults({
        ...results,
        trofeos_agil_showed: true,
        trofeo_showing: false,
      });
    }
  };

  if (
    results &&
    results.trofeos_imparables &&
    !results.trofeos_imparables_showed &&
    !results.trofeo_showing
  ) {
    setResults({ ...results, trofeo_showing: true });
    setTrofeoData({
      type: "imparable",
      title: "Ganaste una Estrella Imparable",
      message: "",
    });
    setOpenTrofeo(true);
  } else if (
    results &&
    results.trofeos_agil &&
    !results.trofeos_agil_showed &&
    !results.trofeo_showing
  ) {
    setResults({ ...results, trofeo_showing: true });
    setTrofeoData({
      type: "agil",
      title: "Ganaste una Estrella Agil",
      message: "",
    });
    setOpenTrofeo(true);
  }

  console.log({ results, trofeoData });

  const title = window.location.pathname.includes("prueba")
    ? "Prueba Finalizada"
    : "Práctica Finalizada";
  const title2 = window.location.pathname.includes("prueba")
    ? "Comenzar otra Prueba"
    : "Comenzar otra Práctica";
  const title3 = window.location.pathname.includes("prueba")
    ? "Cancelar Prueba"
    : "Cancelar Práctica";
  const temaTitle1 = window.location.pathname.includes("prueba")
    ? `Prueba Exploratoria - ${gradoTitle}`
    : `Práctica - ${gradoTitle}`;
  const TrofeoModal = ({ trofeo }) => {
    if (!trofeo) {
      return null;
    }

    let imageSrc;
    if (trofeo.type === "imparable") {
      imageSrc = "/assets/trofeos/imparable.png";
    } else if (trofeo.type === "agil") {
      imageSrc = "/assets/trofeos/agil.png";
    }

    return (
      <div>
        {trofeo ? (
          <Modal
            // keepMounted
            open={openTrofeo}
            onClose={handleCloseTrofeo}
            aria-labelledby="keep-mounted-modal-title"
            aria-describedby="keep-mounted-modal-description"
          >
            <Box sx={styleTrofeoModal}>
              <CardMedia
                component="img"
                sx={{ maxWidth: 300, maxHeight: 300 }}
                image={imageSrc}
                alt={`trofeo ${trofeo.type}`}
              />
              <Typography
                id="keep-mounted-modal-title"
                variant="h5"
                color="success"
              >
                {trofeo.title}
              </Typography>
              <Typography id="keep-mounted-modal-title" variant="subtitle2">
                {trofeo.message}
              </Typography>
              <Box sx={{ display: "flex", flexDirection: "row", pt: 2 }}>
                <Box sx={{ flex: "1 1 auto" }} />
                <Button aria-label="close modal" onClick={handleCloseTrofeo}>
                  Ok
                </Button>
              </Box>
            </Box>
          </Modal>
        ) : null}
      </div>
    );
  };

  return loading ? (
    <Grid container direction="row" justifyContent="center">
      <CircularProgress color="inherit" size={25} />
    </Grid>
  ) : (
    <Box sx={{ width: "100%" }}>
      <Box
        style={{
          display: "flex",
          justifyContent: "space-between",
          marginBottom: "32px",
        }}
      >
        <Button
          variant="outlined"
          color="warning"
          startIcon={<ChevronLeftIcon />}
          onClick={() => {
            window.history.back();
          }}
        >
          Volver
        </Button>
      </Box>
      <Stepper nonLinear activeStep={activeStep}>
        {steps.map((label, index) => (
          <Step key={`step-${index}`} completed={completed[index]}>
            <StepButton color="inherit" onClick={handleStep(index)}>
              {""}
            </StepButton>
          </Step>
        ))}
      </Stepper>
      <div>
        {allStepsCompleted() ? (
          <React.Fragment>
            <Typography variant="h4" sx={{ mt: 2, mb: 1 }}>
              {title}
            </Typography>
            <Box
              sx={{
                display: "flex",
                flexDirection: "row",
                justifyContent: "space-around",
                marginTop: "24px",
              }}
            >
              {/*<Box sx={{ flex: '1 1 auto' }} />*/}
              {/*<Button onClick={handleReset}>Reset</Button>*/}
              <Box>
                <List
                  sx={{
                    width: "100%",
                    maxWidth: 360,
                    bgcolor: "background.paper",
                  }}
                  component="nav"
                  aria-labelledby="nested-list-subheader"
                  subheader={
                    <ListSubheader component="div" id="nested-list-subheader">
                      Resultados
                    </ListSubheader>
                  }
                >
                  <ListItemButton key="list-1">
                    <ListItemIcon>
                      <SchoolIcon color="primary" />
                    </ListItemIcon>
                    <ListItemText primary={gradoTitle} secondary="Grado" />
                  </ListItemButton>
                  <ListItemButton key="list-2">
                    <ListItemIcon>
                      <CategoryIcon color="primary" />
                    </ListItemIcon>
                    <ListItemText primary={temaTitle1} secondary="Tema" />
                  </ListItemButton>
                  <ListItemButton key="list-3">
                    <ListItemIcon>
                      <CheckCircleIcon color="primary" />
                    </ListItemIcon>
                    <ListItemText
                      primary={`${results.totalConsultasCorrectas}/${results.totalConsultas}`}
                      secondary="Respuestas correctas"
                    />
                  </ListItemButton>
                  <ListItemButton key="list-4">
                    <ListItemIcon>
                      <ScoreIcon color="primary" />
                    </ListItemIcon>
                    <ListItemText primary={results.points} secondary="Puntos" />
                  </ListItemButton>
                </List>
              </Box>
              <Box
                sx={{
                  display: "flex",
                  flexDirection: "column",
                  justifyContent: "center",
                  alignItems: "center",
                }}
              >
                <CardMedia
                  component="img"
                  sx={{ maxWidth: 200, maxHeight: 200 }}
                  image="/assets/trofeos/reward-practica.png"
                />
                <Typography variant="h4" sx={{ mt: 2, mb: 1 }}>
                  Muy bien!
                </Typography>
              </Box>
            </Box>
            <Box
              sx={{
                display: "flex",
                flexDirection: "row",
                justifyContent: "flex-end",
                marginTop: "24px",
              }}
            >
              <Button
                variant="outlined"
                color="secondary"
                startIcon={<ChevronLeftIcon />}
                onClick={() => {
                  navigate(`/dashboard/prueba?grado=${grado}`, {
                    replace: true,
                  });
                }}
              >
                Volvar a {gradoTitle}
              </Button>
              {title2.includes("Prueba") && (
                <Button
                  variant="contained"
                  color="primary"
                  endIcon={<RestartAltIcon />}
                  onClick={() => {
                    handleReset();
                  }}
                  style={{ marginLeft: "24px" }}
                >
                  {title2}
                </Button>
              )}
            </Box>
          </React.Fragment>
        ) : (
          <React.Fragment>
            <Box
              sx={{
                display: "flex",
                flexDirection: "column",
                justifyContent: "center",
              }}
            >
              <Box
                sx={{
                  display: "flex",
                  flexDirection: "row",
                  justifyContent: "space-around",
                  marginTop: "24px",
                }}
              >
                {/*<Typography id="keep-mounted-modal-title" variant="subtitle2">
                    Imagen
                  </Typography>*/}

                {questionType === "imagen" && (
                  <CardMedia
                    component="img"
                    sx={{ maxWidth: 350, maxHeight: 300, objectFit: "contain" }}
                    image={steps[activeStep].imageSrc}
                    alt={`imagen del vocablo ${steps[activeStep].vocablo_palabra}`}
                  />
                )}
                {questionType === "video" && (
                  <YoutubeEmbed embedLink={steps[activeStep].videoSrc} />
                )}
                {questionType === "texto" && (
                  <Typography variant="h1">
                    {steps[activeStep].vocablo_palabra}
                  </Typography>
                )}
              </Box>
              <Box
                sx={{
                  display: "flex",
                  flexDirection: "row",
                  justifyContent: "space-around",
                  marginTop: "24px",
                }}
              >
                {responseType === "texto" &&
                  steps[activeStep].palabras_consulta.map((p) => (
                    <Button
                      key={p}
                      variant="outlined"
                      color="success"
                      onClick={() => setResponse({ palabra: p })}
                    >
                      {p}
                    </Button>
                  ))}
                {responseType === "imagen" &&
                  steps
                    .filter((vocablo) =>
                      steps[activeStep].palabras_consulta.includes(
                        vocablo.vocablo_palabra
                      )
                    )
                    .map((vocablo) => (
                      <Button
                        key={vocablo.vocablo_palabra}
                        onClick={() =>
                          setResponse({ palabra: vocablo.vocablo_palabra })
                        }
                      >
                        <CardMedia
                          component="img"
                          sx={{
                            maxWidth: 200,
                            maxHeight: 200,
                            objectFit: "contain",
                          }}
                          image={vocablo.imageSrc}
                          alt={`imagen del vocablo ${vocablo.vocablo_palabra}`}
                        />
                      </Button>
                    ))}
                {responseType === "video" &&
                  steps
                    .filter((vocablo) =>
                      steps[activeStep].palabras_consulta.includes(
                        vocablo.vocablo_palabra
                      )
                    )
                    .map((vocablo) => (
                      <Button
                        key={vocablo.vocablo_palabra}
                        onClick={() =>
                          setResponse({ palabra: vocablo.vocablo_palabra })
                        }
                        sx={{
                          width: 360,
                        }}
                      >
                        <YoutubeEmbed embedLink={vocablo.videoSrc} />
                      </Button>
                    ))}
              </Box>

              <Box
                sx={{
                  display: "flex",
                  flexDirection: "row",
                  justifyContent: "flex-start",
                  marginTop: "24px",
                }}
              >
                <Button
                  variant="outlined"
                  color="error"
                  onClick={() => handleCancelPractica()}
                >
                  {title3}
                </Button>
              </Box>
            </Box>
            {/*<Box sx={{ display: 'flex', flexDirection: 'row', pt: 2 }}>
                <Button
                  color="inherit"
                  disabled={activeStep === 0}
                  onClick={handleBack}
                  sx={{ mr: 1 }}
                >
                  Back
                </Button>
                <Box sx={{ flex: '1 1 auto' }} />
                <Button onClick={handleNext} sx={{ mr: 1 }}>
                  Next
                </Button>
                {activeStep !== steps.length &&
                  (completed[activeStep] ? (
                    <Typography variant="caption" sx={{ display: 'inline-block' }}>
                      Step {activeStep + 1} already completed
                    </Typography>
                  ) : (
                    <Button onClick={handleComplete}>
                      {completedSteps() === totalSteps() - 1
                        ? 'Finish'
                        : 'Complete Step'}
                    </Button>
                  ))}
                      </Box>*/}
          </React.Fragment>
        )}
      </div>
      <VocabloModal vocablo={steps[activeStep]} />
      <TrofeoModal trofeo={trofeoData} />
    </Box>
  );
}
