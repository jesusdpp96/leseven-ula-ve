import React from "react";
import { Box, Grid, ListItem, ListItemText } from "@mui/material";
import ProgressIndicator from "./ProgressIndicator";

/**
 * Renders a ThemeProgressCard component with the provided data.
 *
 * @param {Object} props - The component props.
 * @param {number} props.current - The current progress value.
 * @param {number} props.total - The total progress value.
 * @param {string} props.name - The name to be displayed.
 * @param {string} props.imageSrc - The image source for the card.
 * @param {string} props.progressName - The name of the progress.
 * @param {string} props.progressColor - The color of the progress.
 * @param {string} props.extra - Extra information to be displayed.
 * @return {JSX.Element} A Grid component with the ThemeProgressCard layout.
 */
export default function ThemeProgressCard(props) {

  const { current,
    total,
    name,
    imageSrc,
    progressName,
    progressColor='secondary',
    extra } = props;

  if (!total) return null;

  return (
    <Grid item xs={4} marginTop={1}>
      <ListItem style={{ position: 'relative', flexDirection: 'column' }}>
        <ListItemText
          style={{ width: '100%', padding:' 0 5%' }}
          disableTypography
          primary={name}
          secondary={
            <>
              <Grid container spacing={{ xs: 0, md: 0 }} columns={{ xs: 4, sm: 8 }} >
                <Grid item xs={12}>
                  <img src={imageSrc} style={{ width: '100%', height: '120px' }} alt="" />
                </Grid>
                <Grid item xs={12} style={{ paddingTop: '0px' }}>
                  <ProgressIndicator title={progressName} current={current} total={total} color={progressColor} />
                </Grid>
                <Grid item xs={12} style={{ paddingTop: '0px' }}>
                  {
                    extra &&
                    <Box sx={{ width: '100%' }}>
                      <span style={{ fontSize: '90%' }}>
                        {extra}
                      </span>
                    </Box>
                  }
                </Grid>
              </Grid>
            </>
          } />
      </ListItem>
    </Grid>
  );
}