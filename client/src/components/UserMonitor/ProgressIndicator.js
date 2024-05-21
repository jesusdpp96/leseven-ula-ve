import { Box } from "@mui/material";
import React from "react";
import LinearProgressWithLabel from "./LinearProgressWithLabel";

export default function ProgressIndicator({title, current, total, color}) {
  if (total === 0 && current === 0) return null;

  return <Box sx={{ width: '100%' }}>
    <div style={{ fontSize: '90%' }}>{title}</div>
    <div style={{ fontSize: '90%' }}>({`${current}/${total}`})</div>
    <LinearProgressWithLabel value={(current / (total || 1) * 100)} color={color} />
  </Box>
}