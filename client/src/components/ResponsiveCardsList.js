import * as React from 'react';
import { experimentalStyled as styled } from '@mui/material/styles';
import Box from '@mui/material/Box';
import Paper from '@mui/material/Paper';
import Grid from '@mui/material/Grid';
import { Avatar, Typography, ListItemButton, ListItemAvatar, ListItemText } from '@mui/material';
import ImageIcon from '@mui/icons-material/Image';

const Item = styled(Paper)(({ theme }) => ({
  backgroundColor: theme.palette.mode === 'dark' ? '#1A2027' : '#fff',
  ...theme.typography.body2,
  padding: theme.spacing(2),
  textAlign: 'center',
  color: theme.palette.text.secondary,
}));

const AccountStyle = styled('div')(({ theme }) => ({
  display: 'flex',
  alignItems: 'center',
  padding: theme.spacing(2, 2.5),
  borderRadius: Number(theme.shape.borderRadius) * 1.5,
  // backgroundColor: theme.palette.grey[500_12] || '#ddd',
  backgroundColor: theme.palette.grey[500_12] || '#e3e4fa',  
}));

export default function ResponsiveCardsList() {
  return (
    <Box sx={{ flexGrow: 1 }}>
      <Grid
        container
        spacing={{ xs: 2, md: 4 }}
        columns={{ xs: 4, sm: 8, md: 8 }}
      >
        {Array.from(Array(6)).map((_, index) => (
          <Grid item xs={4} sm={4} md={4} key={index}>
            {/* <Item>xs=2 {index + 1}</Item> */}
            <AccountStyle>
              {/* <Avatar src="/image.png" alt="photoURL" /> */}
              {/* <Box sx={{ ml: 1 }}> */}
              <ListItemButton>
                <ListItemAvatar>
                  <Avatar>
                    <ImageIcon />
                  </Avatar>
                </ListItemAvatar>
                <ListItemText primary={'Grado ' + index}/>
              </ListItemButton>
                {/* <Typography variant="subtitle2" sx={{ color: 'text.primary' }}>
                  Grado {index}
                </Typography> */}
              {/* </Box> */}
            </AccountStyle>
          </Grid>
        ))}
      </Grid>
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

