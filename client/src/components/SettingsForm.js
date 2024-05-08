import * as React from "react";
import { styled } from "@mui/material/styles";
import Box from "@mui/material/Box";
import Button from "@mui/material/Button";
import CircularProgress from "@mui/material/CircularProgress";
import Grid from "@mui/material/Grid";
import Paper from "@mui/material/Paper";
import Typography from "@mui/material/Typography";
import Slider from "@mui/material/Slider";
import MuiInput from "@mui/material/Input";
import OutlinedInput from "@mui/material/OutlinedInput";
import MenuItem from "@mui/material/MenuItem";
import FormControl from "@mui/material/FormControl";
import FormControlLabel from "@mui/material/FormControlLabel";
import FormLabel from "@mui/material/FormLabel";
import Select from "@mui/material/Select";
import Radio from "@mui/material/Radio";
import RadioGroup from "@mui/material/RadioGroup";
import { toast } from "react-toastify";

const Input = styled(MuiInput)`
  width: 42px;
`;

export default function SettingsForm({ grado }) {
  const [loading, setLoading] = React.useState(false);
  const [submit, setSubmit] = React.useState(false);
  const [temas, setTemas] = React.useState([]);
  const [vocablos, setVocablos] = React.useState([]);
  const [gradoTitle, setGradoTitle] = React.useState("");
  const [wordCount, setWordCount] = React.useState(0);
  const [categories, setCategories] = React.useState([]);
  const [questionType, setQuestionType] = React.useState("");
  const [responseType, setResponseType] = React.useState("");

  const handleSliderChange = (event, value) => {
    setWordCount(value);
  };

  const handleInputChange = (event) => {
    const value = event.target.value === "" ? 0 : Number(event.target.value);
    setWordCount(value);
  };

  const handleChange = (event) => {
    const value = event.target.value;
    setCategories(typeof value === "string" ? value.split(",") : value);
  };

  const handleQuestionTypeChange = (event) => {
    const value = event.target.value;
    setQuestionType(value);
  };

  const handleResponseTypeChange = (event) => {
    const value = event.target.value;
    setResponseType(value);
  };

  const handleOnClick = async (event) => {
    event.preventDefault();
    setSubmit(true);
    const body = {
      cantidad_vocablos: wordCount,
      categorias_id: temas
        .filter(
          (tema) => tema.es_categoria && categories.includes(tema.tema_nombre)
        )
        .map((tema, index) => tema.tema_id),
      tipo_pregunta: questionType,
      tipo_respuesta: responseType,
    };

    try {
      const response = await fetch(`/configuracion/${grado}`, {
        method: "PUT",
        headers: {
          "Content-type": "application/json",
          token: localStorage.token,
        },
        body: JSON.stringify(body),
      });

      if (response.status == 200) {
        toast.success("Configuración actualizada");
      } else {
        toast.error("Error no se pudo actualizar la configuración");
      }

      setSubmit(false);
    } catch (err) {
      console.error(err);
      toast.error("Error de red");
    }
  };

  const getConfiguration = async () => {
    try {
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
    } catch (err) {
      console.error(err);
      toast.error("Error de red");
    }
  };

  const getVocablos = async () => {
    try {
      setLoading(true);

      const response = await fetch(`/temas-by-grado/${grado}`, {
        method: "GET",
        headers: {
          "Content-type": "application/json",
          token: localStorage.token,
        },
      });

      const responseData = await response.json();
      const gradoTitle =
        responseData && responseData[0] ? responseData[0].grado_nombre : null;

      setTemas(responseData);
      setGradoTitle(gradoTitle);

      for (const tema of responseData) {
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

          setVocablos((prevVocablos) => [...prevVocablos, ...responseData]);
        }
      }

      setLoading(false);
    } catch (err) {
      setLoading(false);
      console.error(err);
      toast.error("Error de red");
    }
  };

  React.useEffect(() => {
    getConfiguration();
    getVocablos();
  }, []);

  return loading ? (
    <Grid container direction="row" justifyContent="center">
      <CircularProgress color="inherit" size={25} />
    </Grid>
  ) : (
    <div>
      <Typography variant="h4" mb={5}>
        Configuración - {gradoTitle}
      </Typography>
      <Paper
        sx={{
          display: "flex",
          flexDirection: "column",
          flexWrap: "wrap",
          alignContent: "center",
        }}
      >
        <Box>
          <FormControl sx={{ width: "100%" }}>
            <FormLabel>Cantidad de Vocablos</FormLabel>
            <Grid container spacing={2} alignItems="center">
              <Grid item xs>
                <Slider
                  value={wordCount}
                  min={0}
                  max={vocablos.length}
                  step={1}
                  onChange={handleSliderChange}
                />
              </Grid>
              <Grid item>
                <Input
                  value={wordCount}
                  onChange={handleInputChange}
                  inputProps={{
                    step: 1,
                    min: 0,
                    max: vocablos.length,
                    type: "number",
                  }}
                />
              </Grid>
            </Grid>
          </FormControl>
        </Box>
        <Box>
          <FormControl sx={{ width: "100%" }}>
            <FormLabel>Categorías de los Vocablos</FormLabel>
            <Select
              multiple
              value={categories}
              onChange={handleChange}
              input={<OutlinedInput />}
            >
              {temas
                .filter((tema) => tema.es_categoria)
                .map((tema, index) => {
                  return (
                    <MenuItem key={index} value={tema.tema_nombre}>
                      {tema.tema_nombre}
                    </MenuItem>
                  );
                })}
            </Select>
          </FormControl>
        </Box>
        <Box>
          <FormControl sx={{ width: "100%" }}>
            <FormLabel>Tipo de Pregunta</FormLabel>
            <RadioGroup
              value={questionType}
              onChange={handleQuestionTypeChange}
              row
            >
              <FormControlLabel
                value="texto"
                control={<Radio />}
                label="Texto"
              />
              <FormControlLabel
                value="imagen"
                control={<Radio />}
                label="Imagen"
              />
              <FormControlLabel
                value="video"
                control={<Radio />}
                label="Video"
              />
            </RadioGroup>
          </FormControl>
        </Box>
        <Box>
          <FormControl sx={{ width: "100%" }}>
            <FormLabel>Tipo de Respuesta</FormLabel>
            <RadioGroup
              value={responseType}
              onChange={handleResponseTypeChange}
              row
            >
              <FormControlLabel
                value="texto"
                control={<Radio />}
                label="Texto"
              />
              <FormControlLabel
                value="imagen"
                control={<Radio />}
                label="Imagen"
              />
              <FormControlLabel
                value="video"
                control={<Radio />}
                label="Video"
              />
            </RadioGroup>
          </FormControl>
        </Box>
        <Box sx={{ alignSelf: "center" }}>
          <Button variant="contained" color="primary" onClick={handleOnClick}>
            {submit ? (
              <CircularProgress color="inherit" size={25} />
            ) : (
              "Actualizar"
            )}
          </Button>
        </Box>
      </Paper>
    </div>
  );
}
