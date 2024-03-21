import React from "react";
import { useQuery } from "react-query";
import { useParams } from "react-router-dom";
import customFetch from "../../../utils/request";
import { Box, Card, CircularProgress, Paper, Table, TableBody, TableCell, TableContainer, TableHead, TableRow, Typography } from "@mui/material";
import { getDateDDMMYYYY } from "../../../utils/dates";

const gradosMap = {
  1: "primer",
  2: "segundo",
  3: "tercer",
  4: "cuarto",
  5: "quinto",
  6: "sexto",
}

export default function PruebaDetalles() {
  const { pruebaId } = useParams();

  const { isLoading, data } = useQuery('pruebaData', () => customFetch(`/practica/details/${pruebaId}`));

  if (isLoading)
    return <Box sx={{ display: 'flex', flexDirection: 'column' }}>
      <CircularProgress color="primary" size={50} style={{ margin: 'auto' }} />
    </Box>

  return (
    <Card>
      <Box sx={{ display: 'flex', flexDirection: 'column' }}>
        <Box sx={{ margin: "32px 0 0 0" }}>
          <Typography component="h1" variant="h6" color="inherit" noWrap textAlign={"center"} sx={{ flexGrow: 1 }}>
            Resumen de la prueba
          </Typography>
          <Box sx={{marginLeft: '16px'}}>
            <Typography component="h3" color="inherit" noWrap sx={{ flexGrow: 1 }}>
              Alumno: <b>{data.usuario.nombre} {data.usuario.apellido}</b>
            </Typography>
            <Typography component="h3" color="inherit" noWrap sx={{ flexGrow: 1 }}>
              Prueba de <b>{gradosMap[data.grado_id]}</b> grado
            </Typography>
            <Typography component="h3" color="inherit" noWrap sx={{ flexGrow: 1 }}>
              Fecha: <b>{getDateDDMMYYYY(new Date(data.fecha))}</b>
            </Typography>
            <Typography component="p" color="inherit" noWrap sx={{ flexGrow: 1, margin: '16px 0 8px 0' }}>
              Total preguntas: {data.total_consultas} <span style={{marginRight: '32px'}}/> Respuestas correctas: {data.total_correctas}
            </Typography>
          </Box>
        </Box>
        {data.consultas?.length ?
          (<Box>
            <TableContainer component={Paper}>
              <Table sx={{ minWidth: 650 }} aria-label="simple table">
                <TableHead>
                  <TableRow>
                    <TableCell align="left">Vocablo</TableCell>
                    <TableCell align="left">Correcto</TableCell>
                  </TableRow>
                </TableHead>
                <TableBody>
                  {data.consultas.map((row) => (
                    <TableRow
                      key={row.id}
                      sx={{
                        '&:last-child td, &:last-child th': { border: 0 },
                      }}
                    >
                      <TableCell align="left">{row.palabra}</TableCell>
                      <TableCell align="left">{row.vocablo_correcto_id === row.vocablo_respuesta_id ? '✅' : '❌'}</TableCell>
                    </TableRow>
                  ))}
                </TableBody>
              </Table>
            </TableContainer>
          </Box>
          ) : (<Typography component="h3" variant="h7" color="inherit" noWrap sx={{ flexGrow: 1, textAlign: 'center' }}>
            Prueba vacía
          </Typography>)
        }
      </Box>
    </Card>
  );
}