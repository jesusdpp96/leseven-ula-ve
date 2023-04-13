import * as React from 'react';
import { Box, Grid,CircularProgress, IconButton } from '@mui/material';
import SearchIcon from "@mui/icons-material/Search";
import TextField from "@mui/material/TextField";
import { toast } from "react-toastify";
import {  useSearchParams } from 'react-router-dom'
import Card from '@mui/material/Card';
import CardContent from '@mui/material/CardContent';
import CardMedia from '@mui/material/CardMedia';
import Typography from '@mui/material/Typography';
import VocabloModal from './VocabloModal';
import sendLogs from '../utils/sendLogs';

const ItemList = ({vocablos, setQuery, updateVocablos,searchText}) => {

  // const [vocablosFiltered, setVocablosFIltered] = useState([]);
  
  // function filterVocablo(){
  //   const vovocablos.filter(elem => {
  //     if (elem.vocablo_id]) {
  //       return false;
  //     }
  //     existsObj[elem.vocablo_id] = true;
      
  //     return true;
  //   })
  // }
 
  return vocablos.map((elem, index) => {
    
    const indexImage = elem && elem.recursos ? elem.recursos.findIndex(elem => elem.tipo === 'image') : -1;
    let imageSrc;

    if (indexImage !== -1) {
      imageSrc = elem.recursos[indexImage].enlace;
    }
    
    const visto = elem.visto;
    const correcto = elem.correcto;

    let backgroundColor = '#fff';
    backgroundColor = visto ? 'rgba(245, 240, 142, 0.7)': backgroundColor;
    backgroundColor = correcto ? 'rgba(0, 128, 0, 0.3)': backgroundColor;
    
    return (
    <Grid item xs={4} sm={4} md={4} key={index}>
      <Card sx={{ display: 'flex', justifyContent: "space-between", backgroundColor,   }}>
        <CardMedia
          component="img"
          sx={{ width: 130, height: 130, objectFit: 'contain' }}
          image={imageSrc}
          alt="Live from space album cover"
        />
        <Box sx={{ display: 'flex', flexDirection: 'column', flexGrow: 1}}>
          <CardContent sx={{ display: 'flex', flexDirection: 'column', alignItems: 'flex-start', justifyContent: "flex-start" }}>
            <Typography variant="subtitle1" color="text.secondary" component="div">
              {elem.vocablo_palabra }
            </Typography>
            <Typography variant="string" color="text.secondary" component="div" style={{color: "#999999", fontSize: '12px'}}>
              Vocablo
            </Typography>
            <Typography variant="string" color="text.secondary" component="div" style={{color: "#999999", fontSize: '12px'}}>
              {visto ? 'Visto ': null} {visto && correcto ? ' • ' : null} {correcto ? ' Correcto' : null}
            </Typography>
          </CardContent>
          <Box sx={{ display: 'flex', alignItems: 'center', justifyContent: "flex-end", pl: 1, pb: 1, padding: '16px' }}>
            {/* <Button variant="outlined" size="small" onClick={() => {setQuery({grado: elem.grado_id, tema: elem.tema_id})}}>Estudiar vocablo</Button> */}
            <VocabloModal buttonText="Estudiar vocablo" vocablo={elem} updateVocablos={updateVocablos} />
          </Box>
        </Box>
      </Card>
    </Grid>
  )});
};
const SearchBar = ({doSearch}) => (
  <form>
    <TextField
      id="search-bar"
      className="text"
      onInput={(e) => {
        doSearch(e.target.value);
      }}
      label="Introduce una palabra"
      variant="outlined"
      placeholder="Buscar..."
      sx={{ m: 1 }}
    />
    {/* <IconButton type="submit" aria-label="search" sx={{ m: 1 }}>
      <SearchIcon style={{ fill: "blue" }} />
    </IconButton> */}
  </form>
);
export default function Glosario() {
  const tema= 1;
  const [query, setQuery] = useSearchParams();
  const [vocablos, setVocablos] = React.useState([]);
  const [loading, setLoading] = React.useState(false);
  // const [gradoTitle, setGradoTitle] = React.useState();
  const [temaTitle, setTemaTitle] = React.useState();
  const [searchQuery, setSearchQuery] = React.useState('');


  const getVocablos = async () => {
    try {
      setLoading(true);
      // const response = await fetch('/vocablos', {
      const response = await fetch(`/vocablos`, {
          method: "GET",
          headers: {
            "Content-type": "application/json",
            "token": localStorage.token,
          },
        });
  
      const responseData = await response.json();
      const existsObj = {};

      // const dataFiltered = responseData.map((item) => {
      //   item.filter(elem => {
      //     if (existsObj[elem.vocablo_id]) {
      //       return false;
      //     }
      //     existsObj[elem.vocablo_id] = true;
          
      //     return true;
      //   })
      // })

      const dataFiltered = responseData.filter(elem => {
        if (existsObj[elem.vocablo_id]) {
          return false;
        }
        existsObj[elem.vocablo_id] = true;
        
        return true;
      })
      console.log('responseData', responseData)
      setVocablos(dataFiltered);
      setLoading(false);
      // const gradoTitle = responseData && responseData[0] ? responseData[0].grado_nombre : null;
      const temaTitle = responseData && responseData[0] ? responseData[0].tema_nombre : null;
      // setGradoTitle(gradoTitle);
      setTemaTitle(temaTitle);

      sendLogs({
        logs: [
          {
            "log_name": "Profesor: Vizualiza glosario",
            "timestamp": new Date().toISOString(),
            // "grado": gradoTitle,
            "tema": temaTitle
          }
        ]
      })


    } catch(err) {
      setLoading(false);
      console.error(err);
      toast.error("Error de red");
    }
  }

  React.useEffect(() => {
    getVocablos();
  }, []);

  function Search(text) {
    setSearchQuery(text);
  }
  return ( loading ?
    (<Grid container direction="row" justifyContent="center"><CircularProgress color="inherit" size={25} /></Grid>) :(
      <Box sx={{ flexGrow: 1 }}>
        <SearchBar doSearch={Search}/>
        {/* <ItemList vocablos={vocablos} setQuery={setQuery} updateVocablos={() => {getVocablos()}} searchText={searchQuery}/> */}
      </Box>
    )
  );
}