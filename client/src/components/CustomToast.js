import * as React from 'react';

import { Box } from '@mui/material';
import CardContent from '@mui/material/CardContent';
import CardMedia from '@mui/material/CardMedia';
import Typography from '@mui/material/Typography';

export default function CustomToast({imageSrc, message}) {

  return (
    <Box sx={{ display: 'flex', justifyContent: "space-between", backgroundColor: '#fff',   }}>
        <CardMedia
          component="img"
          sx={{ width: 80, height: 80 }}
          image={imageSrc}
          alt="Live from space album cover"
        />
        <Box sx={{ display: 'flex', flexDirection: 'column', flexGrow: 1}}>
          <CardContent sx={{ display: 'flex', flexDirection: 'column', alignItems: 'flex-start', justifyContent: "flex-start" }}>
            <Typography variant="h6" color="text.secondary" component="div">
              {message }
            </Typography>
          </CardContent>
        </Box>
      </Box>
  );
}