import Typography from '@mui/material/Typography';
import Grid from '@mui/material/Grid';
import CardMedia from '@mui/material/CardMedia';
import YouTube from 'react-youtube';

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
            backgroundColor: 'green',
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

export default function Inicio() {

  return (

    <Grid container spacing={{ xs: 2, sm: 3, md: 3 }} columns={{ xs: 4, sm: 8, md: 8 }}>

      <Grid item xs={4} sm={8} md={8} >
        <Typography variant="subtitle2" sx={{ color: 'text.primary' }}>
          Inicio
        </Typography>
        <YoutubeEmbed embedLink={"https://www.youtube.com/watch?v=urpJuQ9IfHc"} />
      </Grid>

      <Grid item xs={2} sm={4} md={4} >

        <CardMedia
          component="img"
          sx={{ maxWidth: 270, maxHeight: 270, objectFit: 'contain' }}
          // image={elem.tema_image_src}
          image={"/assets/inicio/escuela.png"}
          alt={`Escuela`}
        />

      </Grid>

      <Grid item xs={2} sm={4} md={4} >
        <CardMedia
          component="img"
          sx={{ maxWidth: 270, maxHeight: 270, objectFit: 'contain' }}
          // image={elem.tema_image_src}
          image={"/assets/inicio/ula.png"}
          alt={`ULA`}
        />
      </Grid>


    </Grid>
  )
}