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
import { useQuery } from "react-query";
import request from "../../../utils/request";

export default function PruebasMonitor() {

  // const {userId} = useParams();
  const {isLoading: loading} = useQuery('usersData', () => request('/aprendices-monitor/users'));

  return (
    <Box sx={{display: 'flex', flexDirection: 'column'}}>

      <Box sx={{margin: "32px 0"}}>
        <Typography component="h1"  variant="h6" color="inherit" noWrap sx={{ flexGrow: 1 }}>
          Pruebas realizadas por el alumno {loading && (<CircularProgress color="primary" size={20} />)}
        </Typography>
      </Box>
      <Box>
        <TableContainer component={Paper}>
          <Table sx={{ minWidth: 650 }} aria-label="simple table">
            <TableHead>
              <TableRow>
                <TableCell align="right">Fecha</TableCell>
                <TableCell align="right">Grado</TableCell>
                <TableCell align="right">Total de preguntas</TableCell>
                <TableCell align="right">Respuestas correctas</TableCell>
              </TableRow>
            </TableHead>
            <TableBody>
              {/* {usersData.map((row) => (
                <TableRow
                  key={row.correo}
                  sx={{ '&:last-child td, &:last-child th': { border: 0 } }}
                >
                  <TableCell component="th" scope="row">
                    <Button variant="text" onClick={() => goToDetails(row.id)}>
                      {`${row.nombre} ${row.apellido}`}
                    </Button>
                  </TableCell>
                  <TableCell align="right">{row.correo}</TableCell>
                  <TableCell align="right">{row.practicas_realizadas}</TableCell>
                  <TableCell align="right">{row.consultas_correctas}</TableCell>
                  <TableCell align="right">{row.consultas_incorrectas}</TableCell>
                  <TableCell align="right">
                    {removeLoading !== row.correo ?
                     (<IconButton color="error"
                      aria-label="remove element"
                      component="span"
                      onClick={async () => { await removeUser({correo: row.correo})}}>
                        <DeleteForeverIcon />
                      </IconButton>) : (<CircularProgress color="error" size={20} />)}
                  </TableCell>
                </TableRow>
              ))} */}
            </TableBody>
          </Table>
        </TableContainer>
      </Box>
    </Box>
  );
}