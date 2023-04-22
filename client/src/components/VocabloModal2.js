import * as React from 'react';
import YouTube from 'react-youtube';
import {Box, Button, Modal, Typography, Grid, CardMedia} from '@mui/material';


export function YoutubeEmbed({ embedLink }) {
  const onPlayerReady = (event) => {
    // access to player in all event handlers via event.target
    // event.target.pauseVideo();
  }


  const url = new URL(embedLink);
  const searchParams = new URLSearchParams(url.search);
  const id = searchParams.get('v');

  const opts = {
    // height: '200px',
    // width: '320p',
    height: '300px',
    width: '100%',
    playerVars: {
      // https://developers.google.com/youtube/player_parameters
      autoplay: 1,
      loop: 1,
      playlist: id
    },
  };
  
  return <div style={{
            backgroundColor: 'red',
            position: 'relative',
            width: '100%',
            height: '300px',
            paddingTtop: '60.93%',
          }}>
            <div style={{
              position:  'absolute',
              top: 0,
              left: 0,
              bottom: 0,
              right: 0,
              textAlign: 'center',
            }}>
              <YouTube videoId={id} opts={opts} onReady={onPlayerReady} />
            </div>
          </div>
  };

export const styleVocabloModal = {
  position: 'absolute',
  top: '20%',
  left: '20%',
  transform: 'translate(-10%, -10%)',
  width: '80%',
  minHeight: '400px',
  bgcolor: 'background.paper',
  border: '1px solid #666',
  borderRadius: '16px',
  boxShadow: 24,
  p: 4,
};

export default function VocabloModal({buttonText, vocablo, onlyModal, updateVocablos}) {
  const [open, setOpen] = React.useState(false);
  const handleOpen = () => setOpen(true);
  const handleClose = () => setOpen(false);
  const handleCloseAprendido = async () => {

    try {
      const response = await fetch("/vocablo-visto", {
        method: "POST",
        headers: {
          "Content-type": "application/json",
          "token": localStorage.token,
        },
        body: JSON.stringify({grado_id: vocablo.grado_id, tema_id: vocablo.tema_id, vocablo_id: vocablo.vocablo_id}),
      });

      if (response.status === 204) {
        console.info("vocablo visto");

      } else {
        console.error("Unknown errors sending vocablo-visto");
      }

    } catch(err) {
      // code to error action
      console.error("Connection error sending vocablo-visto");
    }

    if (updateVocablos) {
      updateVocablos();
    }
    
    setOpen(false)
  };
  const route = window.location.pathname === '/dashboard/glosario' ? true : false;

  const indexImage = vocablo && vocablo.recursos ? vocablo.recursos.findIndex(elem => elem.tipo === 'image') : -1;
  let imageSrc;
  const indexVideo = vocablo && vocablo.recursos ? vocablo.recursos.findIndex(elem => elem.tipo === 'video') : -1;
  let videoSrc;

  if (indexImage !== -1) {
    imageSrc = vocablo.recursos[indexImage].enlace;
  }

  if (indexVideo !== -1) {
    videoSrc = vocablo.recursos[indexVideo].enlace;
  }

  if (onlyModal) {
    setOpen(true);
  }

  return (
    <div>
      {!onlyModal ? (<Button variant="outlined" onClick={handleOpen}>{buttonText}</Button>) : null}
      <Modal
        // keepMounted
        open={open}
        onClose={handleClose}
        aria-labelledby="keep-mounted-modal-title"
        aria-describedby="keep-mounted-modal-description"
      >
        <Box sx={styleVocabloModal}>
          <Grid container spacing={{ xs: 2, sm: 3, md: 3 }} columns={{ xs: 4, sm: 8, md: 8 }}>
            <Grid item xs={4} sm={4} md={4} >
              <Typography id="keep-mounted-modal-title" variant="subtitle2">
                Imagen
              </Typography>
              <CardMedia
                component="img"
                sx={{ maxWidth: 350, maxHeight: 300 }}
                // image={elem.tema_image_src}
                image={imageSrc}
                alt={`imagen del vocablo ${vocablo.vocablo_palabra}`}
              />
            </Grid>
            <Grid item xs={4} sm={4} md={4} >
              <Typography id="keep-mounted-modal-title" variant="subtitle2">
                  Video
              </Typography>
              <YoutubeEmbed embedLink={videoSrc} />
            </Grid>
            <Grid item xs={4} sm={4} md={4} >
              <Typography id="keep-mounted-modal-description" variant="subtitle2">
                Palabra
              </Typography>
              <Typography id="keep-mounted-modal-title" variant="h3" component="h2">
                {vocablo.vocablo_palabra}
              </Typography>
            </Grid>
            <Grid item xs={4} sm={4} md={4} style={{minHeight: "150px", display: 'flex', justifyContent: 'flex-end', alignItems: 'flex-end', alignSelf: "stretch"}}>
              <Button variant="text" color="error" onClick={handleClose}>Cerrar</Button>
              {!route && <Button variant="contained" color="success" onClick={handleCloseAprendido} style={{marginLeft: '24px'}}>Aprendido</Button>}
              <Button variant="contained" color="success" onClick={handleCloseAprendido} style={{marginLeft: '24px'}}>Aprendido</Button>
            </Grid>
          </Grid>
          {/* <Grid container spacing={{ xs: 5, md: 3 }} columns={{ xs: 4, sm: 8, md: 8 }} style={{alignSelf: "stretch"}}>
          </Grid> */}
        </Box>
      </Modal>
    </div>
  );
}
