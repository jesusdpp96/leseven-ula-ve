import React from "react";
import {  Box, Grid, ListItem, ListItemText } from "@mui/material";
import ProgressIndicator from "./ProgressIndicator";

export default function ThemeProgressCard({ elem }) {
  const correctos = elem.vocablos_correctos_counter || 0;
  const vistos = elem.vocablos_vistos_counter || 0;
  const total = elem.vocablos_counter || 0;

  if (!total) return null;

  return (
    <Grid item xs={4} marginTop={1}>
      <ListItem key={elem.tema_id} style={{ position: 'relative', flexDirection:'column' }}>
        <ListItemText
          disableTypography
          primary={elem.data.nombre}
          secondary={
            <>
              <Grid container spacing={{ xs: 2, md: 4 }} columns={{ xs: 4, sm: 8 }} >
                <Grid item xs={12}>
                  <img src={elem.data.image_src} style={{width: '100%', height:'120px'}} alt="" />
                </Grid>
                <Grid item xs={4} style={{paddingTop: '0px'}}>
                  <ProgressIndicator title="Vistos" current={vistos} total={total} color="secondary" />
                </Grid>
                <Grid item xs={4} style={{paddingTop: '0px'}}>
                  <ProgressIndicator title="Correctos" current={correctos} total={total} />
                </Grid>
                <Grid item xs={4} style={{ paddingTop: '0px' }}>
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