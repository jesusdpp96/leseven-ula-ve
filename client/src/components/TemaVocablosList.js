import * as React from "react";
import { toast } from "react-toastify";
import { useNavigate, useSearchParams } from "react-router-dom";

import { Box, Grid, CircularProgress, Button } from "@mui/material";
import Card from "@mui/material/Card";
import CardContent from "@mui/material/CardContent";
import CardMedia from "@mui/material/CardMedia";
import Typography from "@mui/material/Typography";
import VocabloModal from "./VocabloModal";
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


const ItemList = ({ vocablos, setQuery, updateVocablos }) => {
  if (vocablos.length > 0) {
    return vocablos?.map((elem, index) => {
      const indexImage =
        elem && elem.recursos
          ? elem.recursos.findIndex((elem) => elem.tipo === "image")
          : -1;
      let imageSrc;

      if (indexImage !== -1) {
        imageSrc = elem.recursos[indexImage].enlace;
      }

      const visto = elem.visto;
      const correcto = elem.correcto;

      let backgroundColor = "#fff";
      backgroundColor = visto ? "rgba(245, 240, 142, 0.7)" : backgroundColor;
      backgroundColor = correcto ? "rgba(0, 128, 0, 0.3)" : backgroundColor;

      return (
        <Grid item xs={4} sm={4} md={4} key={index}>
          <Card
            sx={{
              display: "flex",
              justifyContent: "space-between",
              backgroundColor,
            }}
          >
            <CardMedia
              component="img"
              sx={{ width: 130, height: 130, objectFit: "contain" }}
              image={quitarAcentos(imageSrc)}
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
                  {elem.vocablo_palabra}
                </Typography>
                <Typography
                  variant="string"
                  color="text.secondary"
                  component="div"
                  style={{ color: "#999999", fontSize: "12px" }}
                >
                  Vocablo
                </Typography>
                <Typography
                  variant="string"
                  color="text.secondary"
                  component="div"
                  style={{ color: "#999999", fontSize: "12px" }}
                >
                  {visto ? "Visto " : null} {visto && correcto ? " • " : null}{" "}
                  {correcto ? " Correcto" : null}
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
                {/* <Button variant="outlined" size="small" onClick={() => {setQuery({grado: elem.grado_id, tema: elem.tema_id})}}>Estudiar vocablo</Button> */}
                <VocabloModal
                  buttonText="Estudiar vocablo"
                  vocablo={elem}
                  updateVocablos={updateVocablos}
                />
              </Box>
            </Box>
          </Card>
        </Grid>
      );
    });
  } else {
    return (
      <Grid
        container
        spacing={{ xs: 2, md: 4 }}
        columns={{ xs: 4, sm: 8, md: 12 }}
      >
        <Typography
          variant="h5"
          sx={{ color: "text.primary", padding: "32px" }}
          mt={5}
          ml={6}
        >
          No hay vocablos disponibles en este tema.
        </Typography>
      </Grid>
    );
  }
};
const opciones_por_grado = [
  9, // preescolar
  9, // 1er grado
  11, // 2do grado
  6, // tercer grado
  15, // 4to grado
  20, // 5to grado
  21, // 6to grado
];
export default function TemaVocablosList({ grado, tema }) {
  const [query, setQuery] = useSearchParams();
  const [vocablos, setVocablos] = React.useState([]);
  const [loading, setLoading] = React.useState(false);
  const [gradoTitle, setGradoTitle] = React.useState();
  const [temaTitle, setTemaTitle] = React.useState();
  const route = window.location.pathname.includes("estudiar");

  const navigate = useNavigate();

  const getVocablos = async () => {
    try {
      setLoading(true);
      const response = await fetch(
        `/vocablos-by-grado-tema/${grado}/${tema}/100`,
        {
          method: "GET",
          headers: {
            "Content-type": "application/json",
            token: localStorage.token,
          },
        }
      );

      const responseData = await response.json();

      setVocablos(responseData);
      setLoading(false);
      const gradoTitle =
        responseData && responseData[0] ? responseData[0].grado_nombre : null;
      const temaTitle =
        responseData && responseData[0] ? responseData[0].tema_nombre : null;
      setGradoTitle(gradoTitle);
      setTemaTitle(temaTitle);

      sendLogs({
        logs: [
          {
            log_name: "Aprendiz: Vizualiza tema",
            timestamp: new Date().toISOString(),
            grado: gradoTitle,
            tema: temaTitle,
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
    getVocablos();
  }, []);

  return loading ? (
    <Grid container direction="row" justifyContent="center">
      <CircularProgress color="inherit" size={25} />
    </Grid>
  ) : (
    <Box sx={{ flexGrow: 1 }}>
      <Box style={{ display: "flex", justifyContent: "space-between" }}>
        <Button
          variant="outlined"
          color="warning"
          startIcon={<ChevronLeftIcon />}
          onClick={() => {
            setQuery({ grado });
          }}
        >
          Volver
        </Button>
      </Box>

      {vocablos.length > 0 ? (
        <>
          <Typography
            variant="h4"
            sx={{ color: "text.primary", padding: "16px" }}
          >
            Vocablos de {<b>{temaTitle}</b>} -{" "}
            {<span style={{ color: "#999" }}>{gradoTitle}</span>}
          </Typography>
          <Grid
            container
            spacing={{ xs: 2, md: 4 }}
            columns={{ xs: 4, sm: 8, md: 12 }}
          >
            <ItemList
              vocablos={vocablos}
              setQuery={setQuery}
              updateVocablos={() => {
                getVocablos();
              }}
            />
          </Grid>
        </>
      ) : (
        <Grid
          container
          spacing={{ xs: 2, md: 4 }}
          columns={{ xs: 4, sm: 8, md: 12 }}
        >
          <Typography
            variant="h5"
            sx={{ color: "text.primary", padding: "32px" }}
            mt={5}
          >
            No hay vocablos disponibles en este tema.
          </Typography>
        </Grid>
      )}

      <Box
        style={{
          display: "flex",
          justifyContent: "flex-end",
          marginTop: "16px",
        }}
      >
        {!route && (
          <Button
            variant="contained"
            color="primary"
            size="large"
            onClick={() => {
              navigate(
                `/dashboard/prueba/practica?grado=${grado}&tema=${tema}`
              );
            }}
          >
            Comenzar Prueba
          </Button>
        )}
      </Box>
    </Box>
  );
}

// export default function ResponsiveCardsList() {
//   return (
//     <Box sx={{ flexGrow: 1 }}>
//       <Grid
//         container
//         spacing={{ xs: 2, md: 3 }}
//         columns={{ xs: 4, sm: 9, md: 12 }}
//       >
//         {Array.from(Array(6)).map((_, index) => (
//           <Grid item xs={2} sm={3} md={3} key={index}>
//             {/* <Item>xs=2 {index + 1}</Item> */}
//             <AccountStyle>
//               <Avatar src="/image.png" alt="photoURL" />
//               <Box sx={{ ml: 1 }}>
//                 <Typography variant="subtitle2" sx={{ color: 'text.primary' }}>
//                   Grado {index}
//                 </Typography>
//               </Box>
//             </AccountStyle>
//           </Grid>
//         ))}
//       </Grid>
//     </Box>
//   );
// }
