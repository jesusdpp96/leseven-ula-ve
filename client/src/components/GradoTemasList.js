import * as React from "react";
import { toast } from "react-toastify";
import { useSearchParams } from "react-router-dom";

import { Box, Grid, CircularProgress, Button } from "@mui/material";
import Card from "@mui/material/Card";
import CardContent from "@mui/material/CardContent";
import CardMedia from "@mui/material/CardMedia";
import Typography from "@mui/material/Typography";
import ChevronLeftIcon from "@mui/icons-material/ChevronLeft";
import sendLogs from "../utils/sendLogs";


function quitarAcentos(cadena) {
  const acentos = {
    á: "a",
    é: "e",
    í: "i",
    ó: "o",
    ú: "u",
    Á: "A",
    É: "E",
    Í: "I",
    Ó: "O",
    Ú: "U",
  };
  return cadena
    .split("")
    .map((letra) => acentos[letra] || letra)
    .join("")
    .toString()
}

const ItemList = ({ temas, setQuery, showCategorias }) => {
  // const temas2 = temas.map((elem) => ({...elem, tema_image_src: `/assets/images/image${Math.floor(Math.random() * 58)}.png` }));
  const buttonTitle = window.location.pathname.includes("prueba")
    ? "Prueba"
    : "Estudiar";

  return temas
    .filter(
      (elem) =>
        (Boolean(elem.es_categoria) && Boolean(showCategorias)) ||
        (!Boolean(elem.es_categoria) && !Boolean(showCategorias))
    )
    .map((elem, index) => {
      const vocablos_counter = elem.vocablos_counter || 0;
      const vocablos_vistos = elem.vocablos_vistos || 0;
      const percentage = Math.ceil((vocablos_vistos / vocablos_counter) * 100);
      const backgroundImage = `linear-gradient(to right, rgba(0,128,0,${
        percentage / 200
      }) ${percentage}%, rgba(0,128,0,${percentage / 1000}))`;
      return (
        <Grid item xs={4} sm={4} md={4} key={index}>
          <Card
            sx={{
              display: "flex",
              justifyContent: "space-between",
              backgroundImage: backgroundImage,
            }}
          >
            <CardMedia
              component="img"
              sx={{ width: 130, height: 130, objectFit: "contain" }}
              image={quitarAcentos(elem.tema_image_src)}
              alt="Live from space album cover"
            />
            <Box sx={{ display: "flex", flexDirection: "column", flexGrow: 1 }}>
              <CardContent
                sx={{
                  display: "flex",
                  flexDirection: "column",
                  alignItems: "flex-start",
                  justifyContent: "flex-start",
                }}
              >
                <Typography
                  variant="subtitle1"
                  color="text.secondary"
                  component="div"
                >
                  {elem.tema_nombre}
                </Typography>
                <Typography
                  variant="string"
                  color="text.secondary"
                  component="div"
                  style={{ color: "#999999", fontSize: "12px" }}
                >
                  {Boolean(elem.es_categoria) ? "Categoria" : "Tema"}
                </Typography>
                <Typography
                  variant="string"
                  color="text.secondary"
                  component="div"
                  style={{ color: "#999999", fontSize: "12px" }}
                >
                  Vistos: ({vocablos_vistos}/{vocablos_counter})
                </Typography>
              </CardContent>
              <Box
                sx={{
                  display: "flex",
                  alignItems: "center",
                  justifyContent: "flex-end",
                  pl: 1,
                  pb: 1,
                  padding: "16px",
                }}
              >
                <CircularProgressWithLabel value={percentage} />
                <Button
                  variant="outlined"
                  onClick={() => {
                    setQuery({ grado: elem.grado_id, tema: elem.tema_id });
                  }}
                >
                  {buttonTitle}
                </Button>
              </Box>
            </Box>
          </Card>
        </Grid>
      );
    });
};

const ItemList2 = ({ temas, setQuery, showCategorias, gradoTitle }) => {
  // const temas2 = temas.map((elem) => ({...elem, tema_image_src: `/assets/images/image${Math.floor(Math.random() * 58)}.png` }));
  return temas
    .filter(
      (elem) =>
        (Boolean(elem.es_categoria) && Boolean(showCategorias)) ||
        (!Boolean(elem.es_categoria) && !Boolean(showCategorias))
    )
    .map((elem, index) => {
      let vocablos_counter = elem.vocablos_counter || 0;
      // if (gradoTitle.includes("Preescolar")) {
      //   vocablos_counter = 5;
      // }
      // if (gradoTitle.includes("Primer")) {
      //   vocablos_counter = 5;
      // }
      // if (gradoTitle.includes("Segundo")) {
      //   vocablos_counter = 6;
      // }
      // if (gradoTitle.includes("Tercero")) {
      //   vocablos_counter = 4;
      // }
      // if (gradoTitle.includes("Cuarto")) {
      //   vocablos_counter = 5;
      // }
      // if (gradoTitle.includes("Quinto")) {
      //   vocablos_counter = 10;
      // }
      // if (gradoTitle.includes("Sexto")) {
      //   vocablos_counter = 15;
      // }
      const vocablos_vistos = elem.vocablos_vistos || 0;
      const percentage = Math.ceil((vocablos_vistos / vocablos_counter) * 100);
      const backgroundImage = `linear-gradient(to right, rgba(0,128,0,${
        percentage / 200
      }) ${percentage}%, rgba(0,128,0,${percentage / 1000}))`;
      const route = window.location.pathname === "/dashboard/prueba";
      const buttonTitle = window.location.pathname.includes("prueba")
        ? "Prueba"
        : "Estudiar";
      console.log("quitarAcentos(elem.tema_image_src)",quitarAcentos(elem.tema_image_src))
      return (
        <Grid item xs={4} sm={4} md={4} key={index}>
          <Card
            sx={{
              display: "flex",
              justifyContent: "space-between",
              backgroundImage: backgroundImage,
            }}
          >
            <CardMedia
              component="img"
              sx={{ width: 130, height: 130, objectFit: "contain" }}
              image={quitarAcentos(elem.tema_image_src)}
              alt="Live from space album cover"
            />
            <Box sx={{ display: "flex", flexDirection: "column", flexGrow: 1 }}>
              <CardContent
                sx={{
                  display: "flex",
                  flexDirection: "column",
                  alignItems: "flex-start",
                  justifyContent: "flex-start",
                }}
              >
                {!route ? (
                  <Typography
                    variant="subtitle1"
                    color="text.secondary"
                    component="div"
                  >
                    Estudiar-{gradoTitle}
                  </Typography>
                ) : (
                  <Typography
                    variant="subtitle1"
                    color="text.secondary"
                    component="div"
                  >
                    Prueba Exploratoria-{gradoTitle}
                  </Typography>
                )}

                <Typography
                  variant="string"
                  color="text.secondary"
                  component="div"
                  style={{ color: "#999999", fontSize: "12px" }}
                >
                  {Boolean(elem.es_categoria) ? "Categoria" : "Tema"}
                </Typography>
                <Typography
                  variant="string"
                  color="text.secondary"
                  component="div"
                  style={{ color: "#999999", fontSize: "12px" }}
                >
                  Vistos: ({vocablos_vistos}/{vocablos_counter})
                </Typography>
              </CardContent>
              <Box
                sx={{
                  display: "flex",
                  alignItems: "center",
                  justifyContent: "flex-end",
                  pl: 1,
                  pb: 1,
                  padding: "16px",
                }}
              >
                <CircularProgressWithLabel value={percentage} />
                <Button
                  variant="outlined"
                  onClick={() => {
                    setQuery({ grado: elem.grado_id, tema: elem.tema_id });
                  }}
                >
                  {buttonTitle}
                </Button>
              </Box>
            </Box>
          </Card>
        </Grid>
      );
    });
};

const CircularProgressWithLabel = (props) => {
  return (
    <Box
      sx={{ position: "relative", display: "inline-flex", margin: "0px 16px" }}
    >
      <CircularProgress variant="determinate" size={38} {...props} />
      <Box
        sx={{
          top: 0,
          left: 0,
          bottom: 0,
          right: 0,
          position: "absolute",
          display: "flex",
          alignItems: "center",
          justifyContent: "center",
        }}
      >
        <Typography variant="caption" component="div" color="text.secondary">
          {`${Math.round(props.value)}%`}
        </Typography>
      </Box>
    </Box>
  );
};

export default function GradoTemasList({ grado }) {
  const [query, setQuery] = useSearchParams();
  const [temas, setTemas] = React.useState([]);
  const [loading, setLoading] = React.useState(false);
  const [gradoTitle, setGradoTitle] = React.useState();
  const route = window.location.pathname === "/dashboard/prueba";

  const getTemas = async () => {
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

      setTemas(responseData);
      setLoading(false);
      const gradoTitle =
        responseData && responseData[0] ? responseData[0].grado_nombre : null;
      setGradoTitle(gradoTitle);

      sendLogs({
        logs: [
          {
            log_name: "Aprendiz: Visualiza lista de temas",
            timestamp: new Date().toISOString(),
            grado: gradoTitle,
          },
        ],
      });
    } catch (err) {
      setLoading(false);
      console.error(err);
      toast.error("Error de red");
    }
  };

  React.useEffect(() => {
    getTemas();
  }, []);

  return loading ? (
    <Grid container direction="row" justifyContent="center">
      <CircularProgress color="inherit" size={25} />
    </Grid>
  ) : (
    <Box sx={{ flexGrow: 1 }}>
      <Box style={{ display: "flex", justifyContent: "flex-start" }}>
        <Button
          variant="outlined"
          color="warning"
          startIcon={<ChevronLeftIcon />}
          onClick={() => {
            setQuery({});
          }}
        >
          Volver
        </Button>
      </Box>

      {route && (
        <>
          <Typography
            variant="h4"
            sx={{ color: "text.primary", padding: "16px" }}
          >
            Grados - {<b>{gradoTitle}</b>}
          </Typography>
          <Grid
            container
            spacing={{ xs: 2, md: 4 }}
            columns={{ xs: 4, sm: 8, md: 8 }}
          >
            <ItemList2
              temas={temas}
              setQuery={setQuery}
              gradoTitle={gradoTitle}
            />
          </Grid>
        </>
      )}

      {!route && (
        <>
          {" "}
          <Typography
            variant="h4"
            sx={{ color: "text.primary", padding: "16px" }}
          >
            Categorías - {<b>{gradoTitle}</b>}
          </Typography>
          <Grid
            container
            spacing={{ xs: 2, md: 4 }}
            columns={{ xs: 4, sm: 8, md: 8 }}
          >
            <ItemList temas={temas} setQuery={setQuery} showCategorias={true} />
          </Grid>
        </>
      )}
    </Box>
  );
}
