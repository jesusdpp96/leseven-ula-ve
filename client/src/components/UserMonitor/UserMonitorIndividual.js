import React, { useEffect, useState } from 'react';
import {
  Box,
  Grid,
  ListItem,
  ListItemText,
  ListItemAvatar,
  Avatar,
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
import LinearProgressWithLabel from './LinearProgressWithLabel';
import { styleUsuarioMonitorModal } from './styles';
import { useParams } from 'react-router-dom';

export default function UserMonitorIndividual() {
  const {userId} = useParams();
  console.log(userId);

  const [usuarioRowData, setUsuarioRowData] = useState();
  const [loading, setLoading] = useState(true);
  const [loadingBase, setLoadingBase] = useState(true);
  const [data, setData] = useState();

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
    getUserMonitorData({ usuarioTargetId: usuarioRowData.aprendiz_id, grado: gradoSelected, range: { start, end } });

  };

  const getUserMonitorData = async ({ usuarioTargetId, grado, range }) => {
    try {
      let route = `/aprendices-monitor/user/${usuarioTargetId}`;

      if (typeof grado === 'number' && !range) {
        route = `${route}?grado=${grado}`;
      } else if (typeof grado !== 'number' && range) {
        route = `${route}?start=${range.start}&end=${range.end}`;
      } else if (typeof grado === 'number' && range) {
        route = `${route}?grado=${grado}&start=${range.start}&end=${range.end}`;
      }

      const response = await fetch(route, {
        method: "GET",
        headers: {
          "Content-type": "application/json",
          "token": localStorage.token,
        },
      });

      const responseData = await response.json();

      console.log({ responseData });

      setData(responseData);
      setLoading(false);

      if (responseData.grados) {
        const g = responseData.grados.reduce((prev, current) => { prev[current.id] = current; return prev }, {});
        setGrados(g);
      }


    } catch (err) {
      setLoading(false);
      console.error(err);
      // toast.error("Error de red");
    }

  };

  useEffect(() => {
    const getUsersMonitorData = async () => {

      try {
        const response = await fetch(`/aprendices-monitor/user/${userId}`, {
          method: "GET",
          headers: {
            "Content-type": "application/json",
            "token": localStorage.token,
          },
        });
  
        const responseData = await response.json();
        console.log({responseData});
        setUsuarioRowData(responseData);  
      } catch (err) {
        console.error(err.message);
      } finally {
        setLoadingBase(false);
      }
    }
    getUsersMonitorData();
  }, [userId]);

  useEffect(() => {
    getUserMonitorData({ usuarioTargetId: usuarioRowData.aprendiz_id, grado: gradoSelected, range: rangeSelected });
    // eslint-disable-next-line react-hooks/exhaustive-deps
  }, []);

  console.log({ grados, gradoSelected });

  return loadingBase ? <div>loading</div> : <div>xd</div>;

  return (
    <Box sx={{ display: 'flex', flexDirection: 'column' }}>
      <Box sx={styleUsuarioMonitorModal}>
        <Box sx={{ display: 'flex', flexDirection: 'row', pt: 2, paddingLeft: '24px' }}>
          <Typography variant="h4" color="primary">{`${usuarioRowData.nombre} ${usuarioRowData.apellido}`}</Typography>
          <Box sx={{ flex: '1 1 auto' }} />
        </Box>
        {
          loading ?
            (<Grid container direction="row" justifyContent="center"><CircularProgress color="inherit" size={30} /></Grid>) :
            (<Box sx={{ width: '100%', height: '100%', overflowY: 'scroll', padding: '16px', paddingBottom: '64px' }}>
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
                data && data.grados ? (
                  <Stack direction="row" spacing={1} sx={{ margin: '0px 24px 24px 24px' }}>
                    {
                      gradoSelected === undefined ?
                        (<Chip label="Todo" color="primary" />) :
                        (<Chip label="Todo" variant="outlined" onClick={() => {
                          setGradoSelected(undefined);
                          getUserMonitorData({ usuarioTargetId: usuarioRowData.aprendiz_id, grado: undefined, range: rangeSelected });
                        }} />)
                    }

                    {
                      data.grados.map(elem => {
                        return (
                          gradoSelected === elem.id ?
                            (<Chip label={elem.nombre} color="primary" />) :
                            (<Chip label={elem.nombre} variant="outlined" onClick={() => {
                              setGradoSelected(elem.id);
                              getUserMonitorData({ usuarioTargetId: usuarioRowData.aprendiz_id, grado: elem.id, range: rangeSelected });
                            }} />)
                        );
                      })
                    }

                  </Stack>
                ) : null
              }
              <Box>
                {
                  grados && gradoSelected !== undefined ?
                    (
                      <Typography variant="subtitle1"> {`Aplicando filtro por grado: `}
                        <Typography variant="string" color="primary">{grados[gradoSelected].nombre}</Typography>

                        <IconButton aria-label="emove filter" onClick={() => {
                          setGradoSelected(undefined);
                          getUserMonitorData({ usuarioTargetId: usuarioRowData.aprendiz_id, grado: undefined, range: rangeSelected });
                        }}>
                          <DeleteIcon sx={{ color: 'red' }} />
                        </IconButton>
                      </Typography>
                    ) :
                    (null)
                }
                {
                  rangeSelected ?
                    (
                      <Typography variant="subtitle1"> {`Aplicando filtro por rango: `}
                        Desde <Typography variant="string" color="primary">{getDateDDMMYYYY(fromDate)}</Typography> hasta <Typography variant="string" color="primary">{getDateDDMMYYYY(toDate)}</Typography>

                        <IconButton aria-label="remove filter" onClick={() => {
                          setRangeSelected(undefined);
                          getUserMonitorData({ usuarioTargetId: usuarioRowData.aprendiz_id, grado: gradoSelected, range: undefined });
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
                      <TableCell align="right">Puntos</TableCell>
                      <TableCell align="right">Trofeos</TableCell>
                    </TableRow>
                  </TableHead>
                  <TableBody>
                    <TableRow
                      key="row-x-1"
                      sx={{ '&:last-child td, &:last-child th': { border: 0 } }}
                    >
                      <TableCell align="right">{data && data.practicas_realizadas ? data.practicas_realizadas : 0}</TableCell>
                      <TableCell align="right">{data && data.practicas_last_7days ? data.practicas_last_7days : 0}</TableCell>
                      <TableCell align="right">{data && data.total_correctas ? data.total_correctas : 0}</TableCell>
                      <TableCell align="right">{data && data.total_incorrectas ? data.total_incorrectas : 0}</TableCell>
                      <TableCell align="right">{data && data.total_correctas ? data.total_correctas * 100 : 0}</TableCell>
                      <TableCell align="right">
                        {
                          (gradoSelected === undefined && data && data.trofeos) ?
                            `${data.trofeos.imparable || 0} Imparables, ${data.trofeos.agil || 0} Agil, ${usuarioRowData.trofeos_leal} Leal` :
                            (data && data.trofeos ? `${data.trofeos.imparable || 0} Imparables, ${data.trofeos.agil || 0} Agil` : '')
                        }
                      </TableCell>
                    </TableRow>
                  </TableBody>
                </Table>
              </TableContainer>
              <Typography variant="h6">
                Vocablos vistos y contestados de forma correcta por tema
              </Typography>
              <Grid container spacing={{ xs: 2, md: 4 }} columns={{ xs: 4, sm: 8, md: 12 }} >
                {data && data.temas_data ? data.temas_data.map((elem, index) => {
                  const correctos = elem.vocablos_correctos_counter || 0;
                  const vistos = elem.vocablos_vistos_counter || 0;
                  let total = elem.vocablos_counter || 0;
                  const total_consultas = elem.total_consultas || 0;
                  const total_correctas = elem.total_correctas || 0;
                  const consultas_correctas = total_correctas / total_consultas || 0;

                  if (total === 0) {
                    return null;
                  }

                  return (
                    <Grid item xs={4} sm={4} md={4} key={index}>
                      <ListItem key={elem.tema_id}>
                        <ListItemAvatar>
                          <Avatar src={elem.data.image_src}>
                          </Avatar>
                        </ListItemAvatar>
                        <ListItemText
                          primary={elem.data.nombre}
                          secondary={
                            <React.Fragment>
                              <Grid container spacing={{ xs: 2, md: 4 }} columns={{ xs: 4, sm: 8, md: 8 }} >
                                <Grid item xs={4} sm={4} md={4} key={index}>
                                  <Box sx={{ width: '100%' }}>
                                    <span style={{ fontSize: '90%' }}>
                                      Vistos ({`${vistos}/${total}`})
                                    </span>
                                    <LinearProgressWithLabel value={(vistos / total * 100)} color="secondary" />
                                  </Box>
                                </Grid>
                                <Grid item xs={4} sm={4} md={4} key={index}>
                                  <Box sx={{ width: '100%' }}>
                                    <span style={{ fontSize: '90%' }}>
                                      Correctos ({`${correctos}/${total}`})
                                    </span>
                                    <LinearProgressWithLabel value={(correctos / total * 100)} />

                                  </Box>
                                </Grid>
                                <Grid item xs={4} sm={8} md={8} key={index} style={{ paddingTop: '0px' }}>
                                  <Box sx={{ width: '100%' }}>
                                    <span style={{ fontSize: '90%' }}>
                                      Tasa de aciertos: ({`${total_correctas}/${total_consultas}`})
                                    </span>
                                    <LinearProgressWithLabel value={(consultas_correctas * 100)} />
                                  </Box>
                                </Grid>
                                <Grid item xs={4} sm={4} md={4} key={index} style={{ paddingTop: '0px' }}>
                                  <Box sx={{ width: '100%' }}>
                                    <span style={{ fontSize: '90%' }}>
                                      Prácticas: {`${elem.practicas_hechas || 0}`}
                                    </span>
                                  </Box>

                                </Grid>
                              </Grid>


                            </React.Fragment>
                          } />
                      </ListItem>
                    </Grid>
                  )
                }) : null}
              </Grid>


            </Box>)
        }
      </Box>
    </Box>
  );
}