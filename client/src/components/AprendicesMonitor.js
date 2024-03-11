import * as React from 'react';
import { toast } from "react-toastify";

import Table from '@mui/material/Table';
import TableBody from '@mui/material/TableBody';
import TableCell from '@mui/material/TableCell';
import TableContainer from '@mui/material/TableContainer';
import TableHead from '@mui/material/TableHead';
import TableRow from '@mui/material/TableRow';
import Paper from '@mui/material/Paper';
import Box from '@mui/material/Box';
import TextField from '@mui/material/TextField';
import Button from '@mui/material/Button';
import CircularProgress from '@mui/material/CircularProgress';
import Typography from '@mui/material/Typography';
import IconButton from '@mui/material/IconButton';
import DeleteForeverIcon from '@mui/icons-material/DeleteForever';
import validateEmail from '../utils/validateEmail';
import UserMonitorModal from './UserMonitorModal';
import { ERR_USER_NOT_EXISTS, SUCCESS_USER_ADDED, SUCCESS_USER_REMOVED, UNKNOWN_ERROR, USER_NOT_EXISTS } from '../utils/constants';

export const styleUsuarioMonitorModal = {
  position: 'absolute',
  top: '20%',
  left: '20%',
  transform: 'translate(-10%, -10%)',
  width: '80%',
  minHeight: '400px',
  bgcolor: 'background.paper',
  border: '1px solid #666',
  borderRadius: '16px',
  boxShadow: 24,
  p: 4,
};



export default function AprendicesMonitor() {

  const [loading, setLoading] = React.useState(false);
  const [usersData, setUsersData] = React.useState([]);
  const [addLoading, setAddLoading] = React.useState(false);
  const [removeLoading, setRemoveLoading] = React.useState();
  const [error, setError] = React.useState(false);
  const [correo, setCorreo] = React.useState();

  const handleSubmit = async (event) => {
    event.preventDefault();

    try {
      setAddLoading(true);
      const body = { correo };
      const response = await fetch("/aprendices-monitor/add", {
        method: "POST",
        headers: {
          "Content-type": "application/json",
          "token": localStorage.token,
        },
        body: JSON.stringify(body),
      });
      
      if (response.status === 204) {
        toast.success(SUCCESS_USER_ADDED);
      } else {

        try {
          const data = await response.json();
  
          if (data.message === ERR_USER_NOT_EXISTS) {
            toast.error(USER_NOT_EXISTS);
          } else {
            toast.error(UNKNOWN_ERROR);
          }

        } catch (error) {
          toast.error(UNKNOWN_ERROR);
        }
      }

      getUsersMonitorData();
      setAddLoading(false);
      setCorreo(undefined);

    } catch (err) {
      console.error(err.message);
      setAddLoading(false);
    }
  };
  
  const handleChange = (e) => {
    const email = e.target.value
    if (!validateEmail(email)) {
      setError(true);
    } else {
      setError(false);
    }

    setCorreo(email);
  }

  const getUsersMonitorData = async () => {

    try {
      setLoading(true);
      const response = await fetch("/aprendices-monitor/users", {
        method: "GET",
        headers: {
          "Content-type": "application/json",
          "token": localStorage.token,
        },
      });

      const responseData = await response.json();

      console.log({responseData});

      setUsersData(responseData);
      setLoading(false);

      
      // toast.success("Logged in Successfully");
      // toast.error(parseRes);

    } catch (err) {
      console.error(err.message);
      setLoading(false);
    }
  }

  const removeUser = async ({correo}) => {

    try {
      setRemoveLoading(correo);
      const body = { correo };
      const response = await fetch("/aprendices-monitor/remove", {
        method: "POST",
        headers: {
          "Content-type": "application/json",
          "token": localStorage.token,
        },
        body: JSON.stringify(body),
      });

            
      if (response.status === 204) {
        toast.success(SUCCESS_USER_REMOVED);
      } else {
        toast.error(UNKNOWN_ERROR);
      }

      getUsersMonitorData();
      setRemoveLoading(undefined);

    } catch (err) {
      console.error(err.message);
      setRemoveLoading(undefined);
    }
  };

  React.useEffect(() => {
    getUsersMonitorData();
  }, []);


  //Usuario Monitor Modal

  const [openModal, setOpenModal] = React.useState(false);
  const [usuarioRowData, setUsuarioRowData] = React.useState();
  
  return (
    <Box sx={{display: 'flex', flexDirection: 'column'}}>
      <Box>
        <Typography component="h1"  variant="h6" color="inherit" noWrap sx={{ flexGrow: 1 }}>
          Agrega aprendices para ser monitoreados
        </Typography>
      </Box>
      <Box component="form" onSubmit={handleSubmit} noValidate sx={{ display: 'flex', flexDirection: 'row', alignItems: 'center' }}>
        <TextField
          margin="normal"
          error={error}
          required
          id="email"
          label="Correo electrónico"
          name="email"
          type="email"
          onChange={handleChange}
          autoComplete="email"
        />
        <Button
          type="submit"
          variant="contained"
          color="primary"
          disabled={!correo || error || addLoading}
          sx= {{marginLeft: '24px'}}
        >
          {addLoading ? (
              <CircularProgress color="inherit" size={25} />
            ) : (
              "Agregar aprendiz para monitorear"
            )}
        </Button>
      </Box>
      <Box sx={{marginTop: "32px"}}>
        <Typography component="h1"  variant="h6" color="inherit" noWrap sx={{ flexGrow: 1 }}>
          Aprendices monitoreando {loading ? (<CircularProgress color="primary" size={20} />) : (null)}
        </Typography>
      </Box>
      <Box>
        <TableContainer component={Paper}>
          <Table sx={{ minWidth: 650 }} aria-label="simple table">
            <TableHead>
              <TableRow>
                <TableCell>Nombre</TableCell>
                <TableCell align="right">Correo</TableCell>
                <TableCell align="right">Prácticas{<br/>}realizadas</TableCell>
                <TableCell align="right">Consultas{<br/>}correctas</TableCell>
                <TableCell align="right">Consultas{<br/>}incorrectas</TableCell>
                <TableCell align="right">Acción</TableCell>
              </TableRow>
            </TableHead>
            <TableBody>
              {usersData.map((row) => (
                <TableRow
                  key={row.correo}
                  sx={{ '&:last-child td, &:last-child th': { border: 0 } }}
                >
                  <TableCell component="th" scope="row">
                    <Button variant="text" onClick={() => {setUsuarioRowData(row); setOpenModal(true);}}>
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
              ))}
            </TableBody>
          </Table>
        </TableContainer>
      </Box>
      {openModal ? <UserMonitorModal usuarioRowData={usuarioRowData} setOpenModal={setOpenModal}/>: null}
    </Box>
  );
}