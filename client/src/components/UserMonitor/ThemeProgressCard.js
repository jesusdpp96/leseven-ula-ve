import { Avatar, Box, Grid, ListItem, ListItemAvatar, ListItemText } from "@mui/material";
import React from "react";
import LinearProgressWithLabel from "./LinearProgressWithLabel";


export default function ThemeProgressCard({elem}) {
  const correctos = elem.vocablos_correctos_counter || 0;
  const vistos = elem.vocablos_vistos_counter || 0;
  const total = elem.vocablos_counter || 0;

  if (!total) return null;
  
  return (
    <Grid item xs={4} sm={4} md={4}>
      <ListItem key={elem.tema_id}>
        <ListItemAvatar>
          <Avatar src={elem.data.image_src}>
          </Avatar>
        </ListItemAvatar>
        <ListItemText
          primary={elem.data.nombre}
          secondary={
            <>
              <Grid container spacing={{ xs: 2, md: 4 }} columns={{ xs: 4, sm: 8, md: 8 }} >
                <Grid item xs={4} sm={4} md={4}>
                  <Box sx={{ width: '100%' }}>
                    <div style={{ fontSize: '90%' }}>Vistos</div>
                    <div style={{ fontSize: '90%' }}>({`${vistos}/${total}`})</div>
                    <LinearProgressWithLabel value={(vistos / total * 100)} color="secondary" />
                  </Box>
                </Grid>
                <Grid item xs={4} sm={4} md={4}>
                  <Box sx={{ width: '100%' }}>
                    <div style={{ fontSize: '90%' }}>Correctos</div>
                    <div style={{ fontSize: '90%' }}>({`${correctos}/${total}`})</div>
                    <LinearProgressWithLabel value={(correctos / total * 100)} />

                  </Box>
                </Grid>
                <Grid item xs={4} sm={4} md={4} style={{ paddingTop: '0px' }}>
                  <Box sx={{ width: '100%' }}>
                    <span style={{ fontSize: '90%' }}>
                      Prácticas: {`${elem.practicas_hechas || 0}`}
                    </span>
                  </Box>
                </Grid>
              </Grid>
            </>
          } />
      </ListItem>
    </Grid>
  )

}