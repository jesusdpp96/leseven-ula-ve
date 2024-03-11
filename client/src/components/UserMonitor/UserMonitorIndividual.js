import React, { useCallback, useEffect, useState } from 'react';
import {
  Box,
  Grid,
  CircularProgress,
  Typography,
  IconButton,
  Table,
  TableBody,
  TableCell,
  TableContainer,
  TableHead,
  TableRow,
  Paper,
  Stack,
  Chip,
  TextField,
  Button,
} from '@mui/material';
import DeleteIcon from '@mui/icons-material/Delete';

import { AdapterDateFns } from '@mui/x-date-pickers/AdapterDateFns';
import { LocalizationProvider } from '@mui/x-date-pickers/LocalizationProvider';
import { DatePicker } from '@mui/x-date-pickers/DatePicker';
import { getDateDDMMYYYY, getDateYYYYMMDD } from '../../utils/dates';
import { styleUsuarioMonitorModal } from './styles';
import { useParams } from 'react-router-dom';
import { getFilterQueryParams } from '../../utils/getFilterQueryParams';
import ThemeProgressCard from './ThemeProgressCard';

export default function UserMonitorIndividual() {
  const { userId } = useParams();

  const [loading, setLoading] = useState(true);
  const [data, setData] = useState();
  const [usuario, setUsuario] = useState();

  const [gradoSelected, setGradoSelected] = useState();
  const [grados, setGrados] = useState();
  const [rangeSelected, setRangeSelected] = useState();
  const [fromDate, setFromDate] = useState(new Date());
  const [toDate, setToDate] = useState(new Date());
  const [canConsult, setCanConsult] = useState(true);

  const checkCanConsult = ({ newFromDate, newToDate }) => {
    if (!newFromDate || !newToDate) {
      setCanConsult(false);
    } else if (newFromDate.getTime() > newToDate.getTime()) {
      setCanConsult(false);
    } else {
      setCanConsult(true);
    }
  }

  const setConsultByRange = ({ fromDate1, toDate1 }) => {
    const start = getDateYYYYMMDD(fromDate1);
    const end = getDateYYYYMMDD(toDate1);

    console.log({ fromDate1, toDate1, start, end })

    setRangeSelected({ start, end });
    getUserMonitorData({ usuarioTargetId: usuario?.aprendiz_id, grado: gradoSelected, range: { start, end } });
  };

  const getUserMonitorData = useCallback(async () => {
    try {
      const queryParams = getFilterQueryParams(gradoSelected, rangeSelected);
      
      const route = `/aprendices-monitor/user/${userId}${queryParams}`;

      const response = await fetch(route, {
        method: "GET",
        headers: {
          "Content-type": "application/json",
          "token": localStorage.token,
        },
      });

      const responseData = await response.json();

      setUsuario(responseData?.usuario);
      delete responseData.usuario;
      setData(responseData);

      if (responseData.grados) {
        const g = responseData.grados.reduce((prev, current) => { prev[current.id] = current; return prev }, {});
        setGrados(g);
      }
    } catch (err) {
      console.error(err);
    } finally {
      setLoading(false);
    }
  }, [userId, gradoSelected, rangeSelected]);

  useEffect(() => {
    getUserMonitorData();
    // eslint-disable-next-line react-hooks/exhaustive-deps
  }, []);

  return loading ?
    (<Grid container direction="row" justifyContent="center"><CircularProgress color="inherit" size={30} /></Grid>) : (
      <Box sx={{ display: 'flex', flexDirection: 'column' }}>
        <Box sx={styleUsuarioMonitorModal}>
          <Box sx={{ display: 'flex', flexDirection: 'row', pt: 2, paddingLeft: '24px' }}>
            <Typography variant="h4" color="primary">{`${usuario?.nombre} ${usuario?.apellido}`}</Typography>
            <Box sx={{ flex: '1 1 auto' }} />
          </Box>

          <Box sx={{ width: '100%', height: '100%', padding: '16px', paddingBottom: '64px' }}>
            <Typography variant="h6">
              Filtros para consultar
            </Typography>
            <LocalizationProvider dateAdapter={AdapterDateFns}>
              <Stack direction="row" spacing={3} sx={{ margin: '24px' }}>
                <DatePicker
                  disableFuture
                  label="Desde"
                  openTo="year"
                  views={['year', 'month', 'day']}
                  value={fromDate}
                  onChange={(newValue) => {
                    setFromDate(newValue);
                    checkCanConsult({ newFromDate: newValue, newToDate: toDate });
                  }}
                  renderInput={(params) => <TextField {...params} />}
                />

                <DatePicker
                  disableFuture
                  label="Hasta"
                  openTo="year"
                  views={['year', 'month', 'day']}
                  value={toDate}
                  onChange={(newValue) => {
                    setToDate(newValue);
                    checkCanConsult({ newFromDate: fromDate, newToDate: newValue });
                  }}
                  renderInput={(params) => <TextField {...params} />}
                />

                <Button variant="contained" color="primary" disabled={!canConsult} onClick={() => { setConsultByRange({ fromDate1: fromDate, toDate1: toDate }) }}>Consultar</Button>
              </Stack>
            </LocalizationProvider>
            {
              data?.grados ? (
                <Stack direction="row" spacing={0} sx={{ margin: '0px 24px 24px 24px', flexWrap: 'wrap', gap: '8px' }}>
                  {
                    gradoSelected === undefined ?
                      (<Chip label="Todo" color="primary" />) :
                      (<Chip label="Todo" variant="outlined" onClick={() => {
                        setGradoSelected(undefined);
                        getUserMonitorData({ usuarioTargetId: usuario?.aprendiz_id, grado: undefined, range: rangeSelected });
                      }} />)
                  }

                  {
                    data.grados.map((elem, index) => {
                      return (
                        gradoSelected === elem.id ?
                          (<Chip key={index} label={elem.nombre} color="primary" />) :
                          (<Chip key={index} label={elem.nombre} variant="outlined" onClick={() => {
                            setGradoSelected(elem.id);
                            getUserMonitorData({ usuarioTargetId: usuario?.aprendiz_id, grado: elem.id, range: rangeSelected });
                          }} />)
                      );
                    })
                  }

                </Stack>
              ) : null
            }
            <Box>
              {
                (grados && gradoSelected) &&  
                  (
                    <Typography variant="subtitle1"> {`Aplicando filtro por grado: `}
                      <Typography variant="string" color="primary">{grados[gradoSelected].nombre}</Typography>

                      <IconButton aria-label="emove filter" onClick={() => {
                        setGradoSelected(undefined);
                        getUserMonitorData({ usuarioTargetId: usuario?.aprendiz_id, grado: undefined, range: rangeSelected });
                      }}>
                        <DeleteIcon sx={{ color: 'red' }} />
                      </IconButton>
                    </Typography>
                  )
              }
              {
                rangeSelected ?
                  (
                    <Typography variant="subtitle1"> {`Aplicando filtro por rango: `}
                      Desde <Typography variant="string" color="primary">{getDateDDMMYYYY(fromDate)}</Typography> hasta <Typography variant="string" color="primary">{getDateDDMMYYYY(toDate)}</Typography>

                      <IconButton aria-label="remove filter" onClick={() => {
                        setRangeSelected(undefined);
                        getUserMonitorData({ usuarioTargetId: usuario?.aprendiz_id, grado: gradoSelected, range: undefined });
                      }}>
                        <DeleteIcon sx={{ color: 'red' }} />
                      </IconButton>
                    </Typography>
                  ) :
                  (null)
              }
            </Box>
            <Typography variant="h6">
              Estadísticas por temas
            </Typography>
            <TableContainer component={Paper} sx={{ margin: "24px 0px" }}>
              <Table sx={{ minWidth: 650 }} aria-label="simple table">
                <TableHead>
                  <TableRow>
                    <TableCell align="right">Prácticas{<br />}realizadas</TableCell>
                    <TableCell align="right">Prácticas{<br />}últimos 7 días</TableCell>
                    <TableCell align="right">Consultas{<br />}correctas</TableCell>
                    <TableCell align="right">Consultas{<br />}incorrectas</TableCell>
                  </TableRow>
                </TableHead>
                <TableBody>
                  <TableRow
                    key="row-x-1"
                    sx={{ '&:last-child td, &:last-child th': { border: 0 } }}
                  >
                    <TableCell align="right">{data?.practicas_realizadas ?? 0}</TableCell>
                    <TableCell align="right">{data?.practicas_last_7days ?? 0}</TableCell>
                    <TableCell align="right">{data?.total_correctas ?? 0}</TableCell>
                    <TableCell align="right">{data?.total_incorrectas ?? 0}</TableCell>
                  </TableRow>
                </TableBody>
              </Table>
            </TableContainer>
            <Typography variant="h6">
              Vocablos vistos y contestados de forma correcta por tema
            </Typography>
            <Grid container columns={{ xs: 4, sm: 8, md: 12 }} >
              {(data?.temas_data ?? []).map((elem, index) => <ThemeProgressCard key={index} elem={elem} />)}
            </Grid>
          </Box>
        </Box>
      </Box>
    );
}