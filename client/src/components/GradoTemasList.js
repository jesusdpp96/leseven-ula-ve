import * as React from 'react';
import { toast } from "react-toastify";
import { useSearchParams } from 'react-router-dom'

import { Box, Grid,CircularProgress, Button } from '@mui/material';
import Card from '@mui/material/Card';
import CardContent from '@mui/material/CardContent';
import CardMedia from '@mui/material/CardMedia';
import Typography from '@mui/material/Typography';
import ChevronLeftIcon from '@mui/icons-material/ChevronLeft';
import sendLogs from '../utils/sendLogs';


const ItemList = ({temas, setQuery}) => {

  // const temas2 = temas.map((elem) => ({...elem, tema_image_src: `/assets/images/image${Math.floor(Math.random() * 58)}.png` }));

  return temas.map((elem, index) => (
    <Grid item xs={4} sm={4} md={4} key={index}>
      <Card sx={{ display: 'flex', justifyContent: "space-between", backgroundColor: '#e3e4fa',   }}>
        <CardMedia
          component="img"
          sx={{ width: 130, height: 130, objectFit: 'contain' }}
          image={elem.tema_image_src}
          alt="Live from space album cover"
        />
        <Box sx={{ display: 'flex', flexDirection: 'column', flexGrow: 1}}>
          <CardContent sx={{ display: 'flex', flexDirection: 'column', alignItems: 'flex-start', justifyContent: "flex-start" }}>
            <Typography variant="subtitle1" color="text.secondary" component="div">
              {elem.tema_nombre}
            </Typography>
            <Typography variant="string" color="text.secondary" component="div" style={{color: "#999999", fontSize: '12px'}}>
              Tema
            </Typography>
          </CardContent>
          <Box sx={{ display: 'flex', alignItems: 'center', justifyContent: "flex-end", pl: 1, pb: 1, padding: '16px' }}>
            <Button variant="outlined" onClick={() => {setQuery({grado: elem.grado_id, tema: elem.tema_id})}}>Explorar</Button>
          </Box>
        </Box>
      </Card>
    </Grid>
  ));
};

export default function GradoTemasList({grado}) {

  const [query, setQuery] = useSearchParams();
  const [temas, setTemas] = React.useState([]);
  const [loading, setLoading] = React.useState(false);
  const [gradoTitle, setGradoTitle] = React.useState();




  const getTemas = async () => {
    try {
      setLoading(true);
      const response = await fetch(`/temas-by-grado/${grado}`, {
          method: "GET",
          headers: {
            "Content-type": "application/json",
            "token": localStorage.token,
          },
        });
  
      const responseData = await response.json();
  
      setTemas(responseData);
      setLoading(false);
      const gradoTitle = responseData && responseData[0] ? responseData[0].grado_nombre : null;
      setGradoTitle(gradoTitle);

      sendLogs({
        logs: [
          {
            "log_name": "Aprendiz: Visualiza lista de temas",
            "timestamp": new Date().toISOString(),
            "grado": gradoTitle
          },
        ]
      });

    } catch(err) {
      setLoading(false);
      console.error(err);
      toast.error("Error de red");
    }
  }

  React.useEffect(() => {
    getTemas();
  }, []);

  return ( loading ?
    (<Grid container direction="row" justifyContent="center"><CircularProgress color="inherit" size={25} /></Grid>) :(
      <Box sx={{ flexGrow: 1 }}>
        <Box style={{display: 'flex', justifyContent: 'flex-start'}}>
          <Button variant="outlined" color="warning" startIcon={<ChevronLeftIcon />} onClick={() => {window.history.back()}}>Volver</Button>
        </Box>
        <Typography variant="h4" sx={{ color: 'text.primary', padding: '16px' }}>
          Temas de {<b>{gradoTitle}</b>}
        </Typography>
        <Grid
          container
          spacing={{ xs: 2, md: 4 }}
          columns={{ xs: 4, sm: 8, md: 8 }}
        >
          <ItemList temas={temas} setQuery={setQuery} />
        </Grid>
      </Box>
    )
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

