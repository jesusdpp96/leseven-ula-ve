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
import { useParams, useSearchParams } from "react-router-dom";
import { useQuery } from "react-query";
import customFetch from "../../../utils/request";
import { getDateDDMMYYYY } from "../../../utils/dates";
import { capitalizeWords } from "../../../utils/capitalize";

export default function EstudiosMonitor() {
  const { userId } = useParams();
  const [search] = useSearchParams();

  const url = `/aprendices-monitor/${userId}/estudios${search.toString() ? `?${search.toString()}` : ''}`;

  const { isLoading: loading, data: estudios } = useQuery('estudiosData', () => customFetch(url));

  if (loading) 
    return <Box sx={{ display: 'flex', flexDirection: 'column' }}>
      <CircularProgress color="primary" size={50} style={{ margin: 'auto' }} />
    </Box>
  
  return (
    <Box sx={{ display: 'flex', flexDirection: 'column' }}>
      <Box sx={{ margin: "32px 0" }}>
        <Typography component="h1" variant="h6" color="inherit" noWrap sx={{ flexGrow: 1 }}>
          Vocablos estudiados por el alumno
        </Typography>
      </Box>
      {estudios?.length ?
        (<Box>
          <TableContainer component={Paper}>
            <Table sx={{ minWidth: 650 }} aria-label="simple table">
              <TableHead>
                <TableRow>
                  <TableCell align="left">Fecha</TableCell>
                  <TableCell align="left">Vocablo</TableCell>
                </TableRow>
              </TableHead>
              <TableBody>
                {estudios.map((row) => (
                  <TableRow
                    key={row.id}
                    sx={{ 
                      '&:last-child td, &:last-child th': { border: 0 }, 
                      '&:hover': {
                        backgroundColor: '#9ccaf8',
                      } 
                    }}
                  >
                    <TableCell align="left">{getDateDDMMYYYY(new Date(row.fecha))}</TableCell>
                    <TableCell align="left">{capitalizeWords(row.palabra ?? "")}</TableCell>
                  </TableRow>
                ))}
              </TableBody>
            </Table>
          </TableContainer>
        </Box>
        ) : (<Typography component="h3" variant="h7" color="inherit" noWrap sx={{ flexGrow: 1, textAlign: 'center' }}>
          El alumno no ha estudiado ningún vocablo
        </Typography>)
      }
    </Box>
  );
}