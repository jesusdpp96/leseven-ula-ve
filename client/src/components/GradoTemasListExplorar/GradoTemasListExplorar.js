import React from 'react';
import { toast } from "react-toastify";
import { useSearchParams } from 'react-router-dom'
import { Box, Grid,CircularProgress } from '@mui/material';
import Typography from '@mui/material/Typography';
import sendLogs from '../../utils/sendLogs';
import ItemList from './ItemList';


export default function GradoTemasListExplorar({ title }) {

  const [, setQuery] = useSearchParams();
  const [temas, setTemas] = React.useState([]);
  const [loading, setLoading] = React.useState(false);
  const [, setGradoTitle] = React.useState();

  const getTemas = async () => {
    try {
      setLoading(true);
      const response = await fetch(`/temas`, {
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
        <Typography variant="h4" sx={{ color: 'text.primary', padding: '16px' }}>
          {title}
        </Typography>
        <Grid
          container
          spacing={{ xs: 2, md: 4 }}
          columns={{ xs: 4, sm: 8, md: 8 }}
        >
          <ItemList temas={temas} setQuery={setQuery} showCategorias={title === "Categorías"} />
        </Grid>
      </Box>
    )
  );
}