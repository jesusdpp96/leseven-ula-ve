import * as React from "react";
import { Box, Grid, CircularProgress, Button } from "@mui/material";
import SearchIcon from "@mui/icons-material/Search";
import TextField from "@mui/material/TextField";
import { toast } from "react-toastify";
import { useSearchParams } from "react-router-dom";
import Card from "@mui/material/Card";
import CardContent from "@mui/material/CardContent";
import CardMedia from "@mui/material/CardMedia";
import Typography from "@mui/material/Typography";
import VocabloModal from "./VocabloModal";
import sendLogs from "../utils/sendLogs";

const ItemList = ({ vocablos, updateVocablos }) => {

  return vocablos.map((elem, index) => {
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
            image={imageSrc}
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
};

export default function Glosario() {
  const [, setQuery] = useSearchParams();
  const [vocablos, setVocablos] = React.useState([]);
  const [loading, setLoading] = React.useState(false);
  const [, setTemaTitle] = React.useState();
  const [searchQuery, setSearchQuery] = React.useState("");
  const [page, setPage] = React.useState(1);
  const [total, setTotal] = React.useState(1);
  
  const getVocablos = async (word, pageS) => {
    try {
      setLoading(true);
      let page = pageS;
      let word = searchQuery !== "" ? searchQuery : "-1";
      const response = await fetch(`/vocablos/${page}/${word}`, {
        method: "GET",
        headers: {
          "Content-type": "application/json",
          token: localStorage.token,
        },
      });
      const responseData = await response.json();
      // const existsObj = {};
      console.log('Faltantes', responseData?.faltantes)
      console.log('Numero de Faltantes', responseData?.faltantes.length)
      console.log('Palabras completadas', responseData?.total)
      const dataFiltered = responseData?.rows?.filter((elem) => {
        // if (existsObj[elem.vocablo_id]) {
        //   return false;
        // }
        // existsObj[elem.vocablo_id] = true;
        return true;
      });
      setVocablos(dataFiltered);
      setPage(parseInt(responseData?.page));
      setTotal(responseData?.pages);
      setLoading(false);
      // const gradoTitle = responseData && responseData[0] ? responseData[0].grado_nombre : null;
      const temaTitle =
        responseData && responseData[0] ? responseData[0].tema_nombre : null;
      // setGradoTitle(gradoTitle);
      setTemaTitle(temaTitle);
      sendLogs({
        logs: [
          {
            log_name: "Profesor: Vizualiza glosario",
            timestamp: new Date().toISOString(),
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
    getVocablos("-1",1);
    // eslint-disable-next-line react-hooks/exhaustive-deps
  }, []);

  async function Search(text) {
    setSearchQuery(text);
  }

  return loading ? (
    <Grid container direction="row" justifyContent="center">
      <CircularProgress color="inherit" size={25} />
    </Grid>
  ) : (
    <>
      <Box sx={{ flexGrow: 1 }}>
        <Grid
          container
          spacing={{ xs: 2, md: 2 }}
          columns={{ xs: 2, sm: 2, md: 2 }}
        >
          <TextField
            id="search-bar"
            className="text"
            onInput={(e) => {
              Search(e.target.value);
            }}
            label="Introduce una palabra"
            variant="outlined"
            placeholder="Buscar..."
            value={searchQuery}
            sx={{ m: 2 }}
          />
          <Button
            sx={{ m: 2 }}
            type="button"
            variant="contained"
            color="primary"
            onClick={() => {
              getVocablos(searchQuery, 1);
            }}
          >
            <SearchIcon />
          </Button>
        </Grid>
      </Box>
      {vocablos?.length > 0 ? (
        <>
          <Box sx={{ flexGrow: 1 }}>
            <Grid
              container
              spacing={{ xs: 2, md: 4 }}
              columns={{ xs: 4, sm: 8, md: 8 }}
            >
              <ItemList
                vocablos={vocablos}
                setQuery={setQuery}
                updateVocablos={() => {
                  getVocablos();
                }}
                searchText={searchQuery}
              />
            </Grid>
          </Box>
          <Box sx={{ flexGrow: 1 }} justifyContent="center">
            <Grid
              container
              columns={{ xs: 3, sm: 3, md: 3 }}
              justifyContent="center"
            >
              {page > 1 && (
                <Button
                  sx={{ m: 4 }}
                  type="button"
                  variant="contained"
                  color="primary"
                  onClick={() => {
                    getVocablos(searchQuery, page-1);
                  }}
                >
                  {"<"}
                </Button>
              )}
              <Typography sx={{ m: 4 }}>Página {page}</Typography>
              {page < total && (
                <Button
                  sx={{ m: 4 }}
                  type="button"
                  variant="contained"
                  color="primary"
                  onClick={() => {
                    getVocablos(searchQuery, page+1);
                  }}
                >
                  {">"}
                </Button>
              )}
            </Grid>
          </Box>
        </>
      ) : (
        <Typography spacing={{ xs: 2, md: 4 }}>
          No se encontraron palabras que coincidan con la búsqueda!
        </Typography>
      )}
    </>
  );
}
