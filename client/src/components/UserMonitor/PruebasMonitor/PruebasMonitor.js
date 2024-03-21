import React from "react";
import Table from '@mui/material/Table';
import TableBody from '@mui/material/TableBody';
import TableCell from '@mui/material/TableCell';
import TableContainer from '@mui/material/TableContainer';
import TableHead from '@mui/material/TableHead';
import TableRow from '@mui/material/TableRow';
import Paper from '@mui/material/Paper';
import Box from '@mui/material/Box';
import CircularProgress from '@mui/material/CircularProgress';
import Typography from '@mui/material/Typography';
import { useNavigate, useParams, useSearchParams } from "react-router-dom";
import { useQuery } from "react-query";
import customFetch from "../../../utils/request";
import { getDateDDMMYYYY } from "../../../utils/dates";

export default function PruebasMonitor() {
  const { userId } = useParams();
  const [search] = useSearchParams();
  const navigate = useNavigate();

  const url = `/practica/${userId}${search.toString() ? `?${search.toString()}` : ''}`;

  const { isLoading: loading, data: practicas } = useQuery('practicasData', () => customFetch(url));

  if (loading) 
    return <Box sx={{ display: 'flex', flexDirection: 'column' }}>
      <CircularProgress color="primary" size={50} style={{ margin: 'auto' }} />
    </Box>
  
  return (
    <Box sx={{ display: 'flex', flexDirection: 'column' }}>
      <Box sx={{ margin: "32px 0" }}>
        <Typography component="h1" variant="h6" color="inherit" noWrap sx={{ flexGrow: 1 }}>
          Pruebas realizadas por el alumno
        </Typography>
      </Box>
      {practicas?.length ?
        (<Box>
          <TableContainer component={Paper}>
            <Table sx={{ minWidth: 650 }} aria-label="simple table">
              <TableHead>
                <TableRow>
                  <TableCell align="left">Fecha</TableCell>
                  <TableCell align="left">Grado</TableCell>
                  <TableCell align="left">Total de preguntas</TableCell>
                  <TableCell align="left">Respuestas correctas</TableCell>
                </TableRow>
              </TableHead>
              <TableBody>
                {practicas.map((row) => (
                  <TableRow
                    key={row.id}
                    sx={{ 
                      '&:last-child td, &:last-child th': { border: 0 }, 
                      cursor: 'pointer',
                      '&:hover': {
                        backgroundColor: '#9ccaf8',
                      } 
                    }}
                    onClick={() => navigate(`/dashboard/supervisar/pruebas/${row.id}`)}
                  >
                    <TableCell align="left">{getDateDDMMYYYY(new Date(row.fecha))}</TableCell>
                    <TableCell align="left">{row.grado_id}</TableCell>
                    <TableCell align="left">{row.total_consultas}</TableCell>
                    <TableCell align="left">{row.total_correctas}</TableCell>
                  </TableRow>
                ))}
              </TableBody>
            </Table>
          </TableContainer>
        </Box>
        ) : (<Typography component="h3" variant="h7" color="inherit" noWrap sx={{ flexGrow: 1, textAlign: 'center' }}>
          El alumno no ha realizado ninguna prueba
        </Typography>)
      }
    </Box>
  );
}