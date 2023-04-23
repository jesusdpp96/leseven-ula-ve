import Typography from "@mui/material/Typography";
import Grid from "@mui/material/Grid";
import CardMedia from "@mui/material/CardMedia";
import YouTube from "react-youtube";

export function YoutubeEmbed({ embedLink }) {
  const onPlayerReady = (event) => {
    // access to player in all event handlers via event.target
    // event.target.pauseVideo();
  };

  const url = new URL(embedLink);
  const searchParams = new URLSearchParams(url.search);
  const id = searchParams.get("v");

  const opts = {
    // height: '200px',
    // width: '320p',
    height: "300px",
    width: "100%",
    playerVars: {
      // https://developers.google.com/youtube/player_parameters
      autoplay: 1,
      loop: 1,
      playlist: id,
    },
  };

  return (
    <div
      style={{
        backgroundColor: "green",
        position: "relative",
        width: "100%",
        height: "300px",
        paddingTtop: "60.93%",
      }}
    >
      <div
        style={{
          position: "absolute",
          top: 0,
          left: 0,
          bottom: 0,
          right: 0,
          textAlign: "center",
        }}
      >
        <YouTube videoId={id} opts={opts} onReady={onPlayerReady} />
      </div>
    </div>
  );
}

export default function Inicio() {
  return (
    <Grid container spacing={{ xs: 2, sm: 3, md: 3 }}>
      <Grid item xs={12} ml={6} mr={6}>
        <CardMedia
          component="img"
          sx={{ objectFit: "contain" }}
          image={"/assets/inicio/Logos.png"}
          alt={`ULA`}
          F
        />
      </Grid>
      {/* <Grid item xs={12} ml={6} mr={6}>
        <YoutubeEmbed embedLink={"https://www.youtube.com/watch?v=urpJuQ9IfHc"} />
      </Grid> */}
      <Grid item xs={6}>
        <CardMedia
          component="img"
          sx={{ maxHeight:600,objectFit: "contain" }}
          image={"/assets/images/nina.png"}
          alt={`ULA`}
          F
        />
      </Grid>
      <Grid item xs={6} >
        <CardMedia
          component="img"
          sx={{maxHeight:600, objectFit: "contain" }}
          image={"/assets/images/nino.png"}
          alt={`ULA`}
          F
        />
      </Grid>
    </Grid>
  );
}
