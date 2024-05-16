import * as React from "react";
import { styled } from "@mui/material/styles";
import Grid from "@mui/material/Grid";
import Button from "@mui/material/Button";
import CircularProgress from "@mui/material/CircularProgress";
import Paper from "@mui/material/Paper";
import Typography from "@mui/material/Typography";
import MuiInput from "@mui/material/Input";
import OutlinedInput from "@mui/material/OutlinedInput";
import MenuItem from "@mui/material/MenuItem";
import FormControlLabel from "@mui/material/FormControlLabel";
import Stack from "@mui/material/Stack";
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

    setCategories(
      typeof value === "string"
        ? value
            .split(",")
            .map(
              (category) =>
                temas.find((item) => item.tema_nombre === category).tema_id
            )
        : value.map(
            (category) =>
              temas.find((item) => item.tema_nombre === category).tema_id
          )
    );
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
      categorias_id: categories,
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
    getVocablos();
    getConfiguration();
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
      <Paper>
        <Grid container direction="column" spacing={2} sx={{ width: "100%" }}>
          <Grid item>
            <Stack direction="row" spacing={2} sx={{ alignItems: "center" }}>
              <strong>Cantidad de Vocablos:</strong>
              <Input
                value={wordCount > 0 ? wordCount : 1}
                onChange={handleInputChange}
                inputProps={{
                  step: 1,
                  min: 1,
                  max: vocablos.length,
                  type: "number",
                }}
              />
            </Stack>
          </Grid>
          <Grid item>
            <Stack direction="row" spacing={2} sx={{ alignItems: "center" }}>
              <strong>Categorías:</strong>
              <Select
                multiple
                value={categories.map(
                  (category_id) =>
                    temas.find((item) => item.tema_id === category_id)
                      .tema_nombre
                )}
                onChange={handleChange}
                input={<OutlinedInput />}
                inputProps={{
                  style: { textWrap: "wrap", maxWidth: "100%" },
                }}
                sx={{ width: "100%" }}
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
            </Stack>
          </Grid>
          <Grid item>
            <Stack direction="row" spacing={2} sx={{ alignItems: "center" }}>
              <strong>Tipo de Pregunta:</strong>
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
            </Stack>
          </Grid>
          <Grid item>
            <Stack direction="row" spacing={2} sx={{ alignItems: "center" }}>
              <strong>Tipo de Respuesta:</strong>
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
            </Stack>
          </Grid>
          <Grid item mb={2} sx={{ alignSelf: "center" }}>
            <Button variant="contained" color="primary" onClick={handleOnClick}>
              {submit ? (
                <CircularProgress color="inherit" size={25} />
              ) : (
                "guardar configuración"
              )}
            </Button>
          </Grid>
        </Grid>
      </Paper>
    </div>
  );
}
