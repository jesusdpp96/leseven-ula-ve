import * as React from 'react';
import {Box, Modal, Grid} from '@mui/material';
import List from '@mui/material/List';
import ListItem from '@mui/material/ListItem';
import ListItemText from '@mui/material/ListItemText';
import ListItemAvatar from '@mui/material/ListItemAvatar';
import Avatar from '@mui/material/Avatar';
import CircularProgress from '@mui/material/CircularProgress';
import LinearProgress from '@mui/material/LinearProgress';
import Typography from '@mui/material/Typography';
import IconButton from '@mui/material/IconButton';
import ClearIcon from '@mui/icons-material/Clear';
import DeleteIcon from '@mui/icons-material/Delete';
import Table from '@mui/material/Table';
import TableBody from '@mui/material/TableBody';
import TableCell from '@mui/material/TableCell';
import TableContainer from '@mui/material/TableContainer';
import TableHead from '@mui/material/TableHead';
import TableRow from '@mui/material/TableRow';
import Paper from '@mui/material/Paper';
import Stack from '@mui/material/Stack';
import Chip from '@mui/material/Chip';
import TextField from '@mui/material/TextField';
import Button from '@mui/material/Button';

import { AdapterDateFns } from '@mui/x-date-pickers/AdapterDateFns';
import { LocalizationProvider } from '@mui/x-date-pickers/LocalizationProvider';
import { DatePicker } from '@mui/x-date-pickers/DatePicker';


export const styleUsuarioMonitorModal = {
  position: 'absolute',
  top: '20%',
  left: '20%',
  transform: 'translate(-10%, -10%)',
  width: '80%',
  minHeight: '400px',
  height: '80%',
  maxHeight: '80%',
  bgcolor: 'background.paper',
  border: '1px solid #666',
  borderRadius: '16px',
  boxShadow: 24,
  // p: 4,
  overflowY: 'hidden'
};

function getDateYYYYMMDD(date) {
  const year = `${date.getFullYear()}`;
  let month = `${date.getMonth() + 1}`;
  month = month.length === 1 ? `0${month}`: month;

  let day = `${date.getDate()}`;
  day = day.length === 1 ? `0${day}`: day;
  const fecha = `${year}-${month}-${day}`;

  return fecha;
}

function getDateDDMMYYYY(date) {
  const year = `${date.getFullYear()}`;
  let month = `${date.getMonth() + 1}`;
  month = month.length === 1 ? `0${month}`: month;

  let day = `${date.getDate()}`;
  day = day.length === 1 ? `0${day}`: day;
  const fecha = `${day}/${month}/${year}`;

  return fecha;
}

function LinearProgressWithLabel(props) {
  return (
    <Box sx={{ display: 'flex', alignItems: 'center' }}>
      <Box sx={{ width: '100%', mr: 1 }}>
        <LinearProgress variant="determinate" {...props} />
      </Box>
      <Box sx={{ minWidth: 35 }}>
        <Typography variant="body2" color="text.secondary">{`${Math.round(
          props.value,
        )}%`}</Typography>
      </Box>
    </Box>
  );
}

export default function UserMonitorModal({ usuarioRowData, setOpenModal }) {
  const [open, setOpen] = React.useState(true);
  const [loading, setLoading] = React.useState(false);
  const [data, setData] = React.useState();

  const [gradoSelected, setGradoSelected] = React.useState();
  const [grados, setGrados] = React.useState();
  const [rangeSelected, setRangeSelected] = React.useState();
  const [fromDate, setFromDate] = React.useState(new Date());
  const [toDate, setToDate] = React.useState(new Date());
  const [canConsult, setCanConsult] = React.useState(true);

  const checkCanConsult = ({newFromDate, newToDate}) => {
    if (!newFromDate || !newToDate) {
      setCanConsult(false);
    } else if (newFromDate.getTime() > newToDate.getTime()) {
      setCanConsult(false);
    } else {
      setCanConsult(true);
    }
  }

  const setConsultByRange = ({ fromDate1, toDate1}) => {
    const start = getDateYYYYMMDD(fromDate1);
    const end = getDateYYYYMMDD(toDate1);

    console.log({fromDate1, toDate1,start, end})
    
    setRangeSelected({start, end});
    getUserMonitorData({usuarioTargetId: usuarioRowData.aprendiz_id, grado: gradoSelected, range: {start, end}});

  };


  // const handleOpen = () => setOpen(true);
  const handleClose = () => {
    setOpen(false);
    setOpenModal(false);
  };

  const getUserMonitorData = async ({usuarioTargetId, grado, range}) => {
    try {
      setLoading(true);

      let route = `http://localhost:4000/aprendices-monitor/user/${usuarioTargetId}`;

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
  
      console.log({responseData});
      
      setData(responseData);
      setLoading(false);

      if (responseData.grados) {
        const g = responseData.grados.reduce((prev, current) => {prev[current.id] = current; return prev}, {});
        setGrados(g);
      }
      

    } catch(err) {
      setLoading(false);
      console.error(err);
      // toast.error("Error de red");
    }

  };

  React.useEffect(() => {
    getUserMonitorData({usuarioTargetId: usuarioRowData.aprendiz_id, grado: gradoSelected, range: rangeSelected});
  }, []);

  console.log({grados, gradoSelected})

  return (
    <div>
      <Modal
        // keepMounted
        open={open}
        onClose={handleClose}
        aria-labelledby="keep-mounted-modal-title"
        aria-describedby="keep-mounted-modal-description"
      >
        <Box sx={styleUsuarioMonitorModal}>
          <Box sx={{ display: 'flex', flexDirection: 'row', pt: 2, paddingLeft: '24px' }}>
            <Typography variant="h4" color="primary">{`${usuarioRowData.nombre} ${usuarioRowData.apellido}`}</Typography>
            <Box sx={{ flex: '1 1 auto' }} />
            <IconButton aria-label="close modal" onClick={handleClose}>
              <ClearIcon />
            </IconButton>
          </Box>
          {
            loading ? 
            (<Grid container direction="row" justifyContent="center"><CircularProgress color="inherit" size={30} /></Grid>) :
            (<Box sx={{ width: '100%', height: '100%', overflowY: 'scroll', padding: '16px', paddingBottom: '64px'}}>
              <Typography variant="h6">
                Filtros para consultar
              </Typography>
              <LocalizationProvider dateAdapter={AdapterDateFns}>
                <Stack direction="row" spacing={3} sx={{margin:'24px'}}>
                  <DatePicker
                    disableFuture
                    label="Desde"
                    openTo="year"
                    views={['year', 'month', 'day']}
                    value={fromDate}
                    onChange={(newValue) => {
                      setFromDate(newValue);
                      checkCanConsult({newFromDate: newValue, newToDate: toDate});
                      // setDateValue(newValue);
                      // setInputs({...inputs, fecha_nacimiento: newValue})
                      console.log({newValue, typeof: typeof newValue})
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
                      checkCanConsult({newFromDate: fromDate, newToDate: newValue});

                      // setDateValue(newValue);
                      // setInputs({...inputs, fecha_nacimiento: newValue})
                      console.log({newValue, typeof: typeof newValue})
                    }}
                    renderInput={(params) => <TextField {...params} />}
                  />

                  <Button variant="contained" color="primary" disabled={!canConsult} onClick={() => {setConsultByRange({fromDate1: fromDate, toDate1: toDate})}}>Consultar</Button>
                </Stack>
              </LocalizationProvider>
              {
                data && data.grados ? (
                  <Stack direction="row" spacing={1} sx={{margin:'0px 24px 24px 24px'}}>
                    {
                      gradoSelected === undefined ?
                        (<Chip label="Todo" color="primary" /> ) :
                        (<Chip label="Todo" variant="outlined" onClick={() => {
                          setGradoSelected(undefined);
                          getUserMonitorData({usuarioTargetId: usuarioRowData.aprendiz_id, grado: undefined, range: rangeSelected});
                        }} />)  
                    }

                    {
                      data.grados.map(elem => {
                        return (
                          gradoSelected === elem.id ?
                          (<Chip label={elem.nombre} color="primary"  />) : 
                          (<Chip label={elem.nombre} variant="outlined" onClick={() => {
                            setGradoSelected(elem.id);
                            getUserMonitorData({usuarioTargetId: usuarioRowData.aprendiz_id, grado: elem.id, range: rangeSelected});
                          }} />)
                        );
                      })
                    }

                  </Stack>
                ): null
              }
              <Box>
                {
                  grados && gradoSelected !== undefined ?
                  (
                    <Typography variant="subtitle1"> {`Aplicando filtro por grado: `}
                      <Typography variant="string" color="primary">{grados[gradoSelected].nombre}</Typography>
                      
                      <IconButton aria-label="emove filter" onClick={() => {
                        setGradoSelected(undefined);
                        getUserMonitorData({usuarioTargetId: usuarioRowData.aprendiz_id, grado: undefined, range: rangeSelected});
                      }}>
                        <DeleteIcon sx={{color: 'red'}} />
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
                        getUserMonitorData({usuarioTargetId: usuarioRowData.aprendiz_id, grado: gradoSelected, range: undefined});
                      }}>
                        <DeleteIcon sx={{color: 'red'}} />
                      </IconButton>
                    </Typography>
                  ) :
                  (null)
                } 
              </Box>
              <Typography variant="h6">
                Información acerca de las practicas
              </Typography>
              <TableContainer component={Paper} sx={{margin: "24px 0px"}}>
                <Table sx={{ minWidth: 650 }} aria-label="simple table">
                  <TableHead>
                    <TableRow>
                      <TableCell align="right">Practicas{<br/>}realizadas</TableCell>
                      <TableCell align="right">Practicas{<br/>}ultimos 7 dias</TableCell>
                      <TableCell align="right">Consultas{<br/>}correctas</TableCell>
                      <TableCell align="right">Consultas{<br/>}incorrectas</TableCell>
                      <TableCell align="right">Puntos</TableCell>
                      <TableCell align="right">Trofeos</TableCell>
                    </TableRow>
                  </TableHead>
                  <TableBody>
                      <TableRow
                        key="row-x-1"
                        sx={{ '&:last-child td, &:last-child th': { border: 0 } }}
                      >
                        <TableCell align="right">{data && data.practicas_realizadas ? data.practicas_realizadas: 0}</TableCell>
                        <TableCell align="right">{data && data.practicas_last_7days ? data.practicas_last_7days: 0 }</TableCell>
                        <TableCell align="right">{data && data.total_correctas ? data.total_correctas: 0}</TableCell>
                        <TableCell align="right">{data && data.total_incorrectas ? data.total_incorrectas: 0}</TableCell>
                        <TableCell align="right">{data && data.total_correctas ? data.total_correctas * 100: 0}</TableCell>
                        <TableCell align="right">
                          {
                            (gradoSelected === undefined && data && data.trofeos) ?
                              `${data.trofeos.imparable || 0} Imparables, ${data.trofeos.agil || 0} Agil, ${usuarioRowData.trofeos_leal} Leal`:
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
              <List sx={{ width: '100%', bgcolor: 'background.paper', }}>

                {data && data.temas_data ? data.temas_data.map(elem => {
                  const correctos = elem.vocablos_correctos_counter || 0;
                  const vistos = elem.vocablos_vistos_counter || 0;
                  const total = elem.vocablos_counter || 0;

                  if (total === 0) {
                    return null;
                  }

                  return (
                    <ListItem key={elem.tema_id}>
                    <ListItemAvatar>
                      <Avatar src={elem.data.image_src}>
                      </Avatar>
                    </ListItemAvatar>
                    <ListItemText
                      primary={elem.data.nombre}
                      secondary={
                        <React.Fragment>
                          <Box sx={{ width: '100%' }}>
                            <span style={{fontSize: '90%'}}>
                              Vistos ({`${vistos}/${total}`})
                            </span>
                            <LinearProgressWithLabel value={(vistos/total * 100)} color="secondary" />
                          </Box>
                          <Box sx={{ width: '100%' }}>
                            <span style={{fontSize: '90%'}}>
                              Correctos ({`${correctos}/${total}`})
                            </span>
                            <LinearProgressWithLabel value={(correctos/total * 100)} />
                          </Box>
                        </React.Fragment>
                      } />
                    </ListItem>
                  )
                }): null}
                
              </List>

            </Box>)
          }
        </Box>
      </Modal>
    </div>
  );
}
