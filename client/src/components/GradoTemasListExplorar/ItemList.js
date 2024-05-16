import { Box, Button, Card, CardContent, CardMedia, Grid, Typography } from "@mui/material";
import React from "react";
import CircularProgressWithLabel from "./CircularProgressWithLabel";
import { quitarAcentos } from "../../utils/quitarAcentos";

const ItemList = ({ temas, setQuery, showCategorias }) => {

  return temas
    // eslint-disable-next-line no-mixed-operators
    .filter(elem => Boolean(elem.es_categoria) && Boolean(showCategorias) || !Boolean(elem.es_categoria) && !Boolean(showCategorias))
    .map((elem, index) => {
      const vocablos_counter = elem.vocablos_counter || 0;
      let vocablos_vistos = elem.vocablos_vistos || 0;
      if (vocablos_vistos > vocablos_counter) vocablos_vistos = vocablos_counter;

      let percentage = Math.ceil(vocablos_vistos / vocablos_counter * 100);
      if (percentage > 100) percentage = 100;

      const backgroundImage = `linear-gradient(to right, rgba(0,128,0,${percentage / 200}) ${percentage}%, rgba(0,128,0,${percentage / 1000}))`;

      const cardTextColor = percentage > 50 ? "#334d33" : "#999999";

      return (
        <Grid item xs={4} sm={4} md={4} key={`${index}-${Boolean(showCategorias)}`}>
          <Card sx={{ display: 'flex', justifyContent: "space-between", backgroundImage: backgroundImage, height: "100%" }}>
            <CardMedia
              component="img"
              sx={{ width: 130, height: 130, objectFit: 'contain' }}
              image={quitarAcentos(elem.tema_image_src)}
              alt="Live from space album cover"
            />
            <Box sx={{ display: 'flex', flexDirection: 'column', flexGrow: 1, justifyContent: 'space-between' }}>
              <CardContent sx={{ display: 'flex', flexDirection: 'column', alignItems: 'flex-start', justifyContent: "flex-start" }}>
                <Typography variant="subtitle1" color="text.secondary" component="div">
                  {elem.tema_nombre}
                </Typography>
                <Typography variant="string" component="div" style={{ color: cardTextColor, fontSize: '12px' }}>
                  {Boolean(elem.es_categoria) ? 'Categoria' : 'Tema'}
                </Typography>
                <Typography variant="string" component="div" style={{ color: cardTextColor, fontSize: '12px' }}>
                  Vistos: ({vocablos_vistos}/{vocablos_counter})
                </Typography>
              </CardContent>
              <Box sx={{ display: 'flex', alignItems: 'center', justifyContent: "flex-end", pl: 1, pb: 1, padding: '16px' }}>
                <CircularProgressWithLabel value={percentage} />
                <Button variant="outlined" onClick={() => { setQuery({ tema: elem.tema_id }) }}>Explorar</Button>
              </Box>
            </Box>
          </Card>
        </Grid>
      );
    });
};

export default ItemList;