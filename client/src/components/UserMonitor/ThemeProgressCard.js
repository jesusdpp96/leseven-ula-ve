import React from "react";
import { Avatar, Box, Grid, ListItem, ListItemAvatar, ListItemText } from "@mui/material";
import ProgressIndicator from "./ProgressIndicator";


export default function ThemeProgressCard({elem}) {
  const correctos = elem.vocablos_correctos_counter || 0;
  const vistos = elem.vocablos_vistos_counter || 0;
  const total = elem.vocablos_counter || 0;

  if (!total) return null;
  
  return (
    <Grid item xs={4} sm={4} md={4}>
      <ListItem key={elem.tema_id}>
        <ListItemAvatar>
          <Avatar src={elem.data.image_src} />
        </ListItemAvatar>
        <ListItemText
          primary={elem.data.nombre}
          secondary={
            <>
              <Grid container spacing={{ xs: 2, md: 4 }} columns={{ xs: 4, sm: 8, md: 8 }} >
                <Grid item xs={4} sm={4} md={4}>
                  <ProgressIndicator title="Vistos" current={vistos} total={total} color="secondary" />
                </Grid>
                <Grid item xs={4} sm={4} md={4}>
                  <ProgressIndicator title="Correctos" current={correctos} total={total} />
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
  );
}