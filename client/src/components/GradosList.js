import * as React from 'react';
import { useSearchParams } from 'react-router-dom';
import { toast } from "react-toastify";

import { experimentalStyled as styled } from '@mui/material/styles';
import { Avatar, Box, Grid, ListItemButton, ListItemAvatar, ListItemText,CircularProgress } from '@mui/material';
import sendLogs from '../utils/sendLogs';


const AccountStyle = styled('div')(({ theme }) => ({
  display: 'flex',
  alignItems: 'center',
  // padding: theme.spacing(2, 2.5),
  borderRadius: Number(theme.shape.borderRadius) * 1.5,
  // backgroundColor: theme.palette.grey[500_12] || '#ddd',
  backgroundColor: theme.palette.grey[500_12] || '#e3e4fa',  
}));

const ItemList = ({grados, setQuery}) => {



  return grados.map((elem, index) => (
    <Grid item xs={4} sm={4} md={4} key={index}>
      <AccountStyle>
        <ListItemButton onClick={()=> {setQuery({grado: elem.id})}}>
          <ListItemAvatar>
            <Avatar src={elem.image_src}>
            </Avatar>
          </ListItemAvatar>
          <ListItemText primary={elem.nombre}/>
        </ListItemButton>
      </AccountStyle>
    </Grid>
  ));
};

export default function GradosList() {

  const [, setQuery] = useSearchParams();
  const [grados, setGrados] = React.useState([]);
  const [loading, setLoading] = React.useState(false);

  const getGrados = async () => {
    try {
      setLoading(true);
      const response = await fetch("/grados", {
          method: "GET",
          headers: {
            "Content-type": "application/json",
            "token": localStorage.token,
          },
        });
  
      const userDataRes = await response.json();
  
      setGrados(userDataRes);
      setLoading(false);

      sendLogs({
        logs: [
          {
            "log_name": "Aprendiz: Visualiza lista de grados",
            "timestamp": new Date().toISOString(),
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
    getGrados();
  }, []);

  return ( loading ?
    (<Grid container direction="row" justifyContent="center"><CircularProgress color="inherit" size={25} /></Grid>) :(<Box sx={{ flexGrow: 1 }}>
      <Grid
        container
        spacing={{ xs: 2, md: 4 }}
        columns={{ xs: 4, sm: 8, md: 8 }}
      >
        <ItemList grados={grados} setQuery={setQuery} />
      </Grid>
    </Box>)
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

