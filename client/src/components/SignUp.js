import React, {useEffect} from 'react';
import Avatar from '@mui/material/Avatar';
import Button from '@mui/material/Button';
import CssBaseline from '@mui/material/CssBaseline';
import TextField from '@mui/material/TextField';
import Autocomplete from '@mui/material/Autocomplete';
import FormControlLabel from '@mui/material/FormControlLabel';
import Link from '@mui/material/Link';
import Grid from '@mui/material/Grid';
import Box from '@mui/material/Box';
import LockOutlinedIcon from '@mui/icons-material/LockOutlined';
import Typography from '@mui/material/Typography';
import Container from '@mui/material/Container';
import { createTheme, ThemeProvider } from '@mui/material/styles';

import { AdapterDateFns } from '@mui/x-date-pickers/AdapterDateFns';
import { LocalizationProvider } from '@mui/x-date-pickers/LocalizationProvider';
import { DatePicker } from '@mui/x-date-pickers/DatePicker';
import Stack from '@mui/material/Stack';
import { useNavigate } from "react-router-dom";

import Radio from '@mui/material/Radio';
import RadioGroup from '@mui/material/RadioGroup';
import FormControl from '@mui/material/FormControl';
import FormLabel from '@mui/material/FormLabel';
import { toast } from "react-toastify";
import CircularProgress from '@mui/material/CircularProgress'
import validateEmail from '../utils/validateEmail';



function Copyright(props) {
  return (
    <Typography variant="body2" color="text.secondary" align="center" {...props}>
      {'Copyright © '}
      <Link color="inherit" href="http://www.ula.ve">
        Universidad de los Andes
      </Link>{' '}
      {new Date().getFullYear()}
      {'.'}
    </Typography>
  );
}

const theme = createTheme();

// function RoleOptions({roles, setUserRoleValue}) {
  
//   const rolesTags = roles.map(elem => (
//     <FormControlLabel key={elem.id} value={elem.id} control={<Radio />} label={elem.nombre} />
//   ))

//   const handleChange = (e) => {console.log({event: e, name: e.target.name, value: e.target.value})};

//   return (
//     <FormControl onChange={handleChange}>
//       <FormLabel id="user-rol">Rol</FormLabel>
//       <RadioGroup
//         aria-labelledby="user-rol"
//         name="radio-buttons-group"
//       >
//        {rolesTags}
//       </RadioGroup>
//     </FormControl>
//   );


// }


export default function SignUp({ setAuth }) {

  const navigate = useNavigate();

  const [inputs, setInputs] = React.useState({
    nombre: null,
    apellido: null,
    correo: null,
    contrasena: null,
    pais: null,
    ciudad: null,
    escuela: null,
    tipo_aprendiz: null,
    grado_instruccion_aprendiz: null,
    fecha_nacimiento: null,
    rol_usuario_id: null,
    genero: null,
  });
  const [dateValue, setDateValue] = React.useState(null);
  const [metadata, setMetadata] = React.useState({
    roles: [],
    paises: [],
    ciudades: [],
    escuelas: [],
    tipoAprendiz: ['Estudiante', 'Familiar', 'Afín a la institución', 'Otro'],
    nivelInstruccion: ['Primario', 'Profesional', 'Secundario', 'Medio-superior', 'Superior'],
  });

  const [isAprendiz, setIsAprendiz] = React.useState(false);
  
  const getMetadata = async () => {
    try {
      const response = await fetch("/auth/register-metadata", {
          method: "GET",
          headers: {
            "Content-type": "application/json",
          },
        });
  
      const metadataRes = await response.json();
  
      setMetadata({...metadata, ...metadataRes});

    } catch(err) {
      console.error(err);
    }
  }

  const [loading, setLoading] = React.useState(false);

  const [error, setError] = React.useState(false);


  useEffect(() => {
    getMetadata();
  }, []);

  const handleChange = (e) => {
    setError(false);
    setInputs({ ...inputs, [e.target.name]: e.target.value })
  };

  const handleChangeUserRole = (e) => {
    setError(false);
    const isAprendizVal = Number(e.target.value) === 2 ? true : false;
    setIsAprendiz(isAprendizVal);
    handleChange(e);
  };

  const handleChangeAutocomplete = (e) => {
    setError(false);
    console.log({event:e, name: e.target.name, value: e.target.value})

    if (e.target.localName === 'input') {

      setTimeout(() => {
        setInputs({ ...inputs, [e.target.name]: e.target.value })
      }, 400);

    } else {
      const name = e.target.id.split("-")[0];
      setInputs({ ...inputs, [name]: e.target.textContent })
    }
  };
  
  
  const handleSubmit = async (event) => {
    event.preventDefault();

    let hasError = false;    
    
    if (
      !inputs.nombre ||
      !inputs.apellido ||
      !inputs.correo ||
      !inputs.contrasena ||
      !inputs.pais ||
      !inputs.ciudad ||
      !inputs.escuela ||
      !inputs.fecha_nacimiento ||
      !inputs.rol_usuario_id ||
      !inputs.genero
    ) {
      hasError = true;
    } else if (Number(inputs.rol_usuario_id) === 2 && (!inputs.tipo_aprendiz || !inputs.grado_instruccion_aprendiz)) {
      hasError = true;
    } else if (!validateEmail(inputs.correo)) {
      hasError = true;
    }

    setError(hasError);

    if (hasError) {
      return;
    }

    try {
      setLoading(true);
      const fnDate = new Date(inputs.fecha_nacimiento);
      const fecha_nacimiento = `${fnDate.getFullYear()}-${fnDate.getMonth()}-${fnDate.getDay()}`;
      const body = {...inputs, fecha_nacimiento};
      const response = await fetch("/auth/register", {
        method: "POST",
        headers: {
          "Content-type": "application/json",
        },
        body: JSON.stringify(body),
      });

      const parseRes = await response.json();

      setLoading(false);

      if (parseRes.token) {
        localStorage.setItem("token", parseRes.token);
        setAuth(true);
        // toast.success("Logged in Successfully");
        toast.success("Cuenta creada correctamente");
      } else {
        setAuth(false);
        toast.error(parseRes);
      }
    } catch (err) {
      toast.error("Error de conexion.");
      setLoading(false);
      console.error(err.message);
    }
  };



  return (
    <ThemeProvider theme={theme}>
      <Container component="main" maxWidth="xs">
        <CssBaseline />
        <Box
          sx={{
            marginTop: 8,
            display: 'flex',
            flexDirection: 'column',
            alignItems: 'center',
          }}
        >
          <Avatar sx={{ m: 1, bgcolor: 'secondary.main' }}>
            <LockOutlinedIcon />
          </Avatar>
          <Typography component="h1" variant="h5">
            Registro de usuario
          </Typography>
          <Box component="form" noValidate onSubmit={handleSubmit} sx={{ mt: 3 }}>
            <Grid container spacing={2}>
              <Grid item xs={12} sm={6}>
                <TextField
                  autoComplete="given-name"
                  name="nombre"
                  required
                  fullWidth
                  id="nombre"
                  label="Nombres"
                  onChange={handleChange}
                  autoFocus
                />
              </Grid>
              <Grid item xs={12} sm={6}>
                <TextField
                  required
                  fullWidth
                  id="apellido"
                  label="Apellidos"
                  name="apellido"
                  onChange={handleChange}
                  autoComplete="family-name"
                />
              </Grid>
              <Grid item xs={12}>
                <LocalizationProvider dateAdapter={AdapterDateFns}>
                  <Stack spacing={3}>
                    <DatePicker
                      disableFuture
                      label="Fecha de nacimiento"
                      openTo="year"
                      views={['year', 'month', 'day']}
                      value={dateValue}
                      onChange={(newValue) => {
                        setDateValue(newValue);
                        setInputs({...inputs, fecha_nacimiento: newValue})
                      }}
                      renderInput={(params) => <TextField {...params} />}
                    />
                  </Stack>
                </LocalizationProvider>
              </Grid>
              <Grid item xs={12}>
                <TextField
                  required
                  fullWidth
                  id="correo"
                  label="Correo electronico"
                  name="correo"
                  type="email"
                  onChange={handleChange}
                  autoComplete="email"
                />
              </Grid>
              <Grid item xs={12}>
                <TextField
                  required
                  fullWidth
                  name="contrasena"
                  label="Contraseña"
                  type="password"
                  id="contrasena"
                  onChange={handleChange}
                  autoComplete="new-password"
                />
              </Grid>
              <Grid  item xs={12} sm={6}>
                <Autocomplete
                    disablePortal
                    id="pais"
                    options={metadata.paises}
                    name="pais"
                    onChange={handleChangeAutocomplete}
                    renderInput={(params) => <TextField {...params} name="pais" label="Pais" />}
                  />
              </Grid>
              <Grid  item xs={12} sm={6}>
                <Autocomplete
                    disablePortal
                    id="ciudad"
                    options={metadata.ciudades}
                    name="ciudad"
                    onChange={handleChangeAutocomplete}
                    renderInput={(params) => <TextField {...params} name="ciudad" label="Ciudad" />}
                  />
              </Grid>
              <Grid  item xs={12}>
                <Autocomplete
                    disablePortal
                    id="escuela"
                    options={metadata.escuelas}
                    name="escuela"
                    onChange={handleChangeAutocomplete}
                    renderInput={(params) => <TextField {...params} name="escuela" label="Escuela" />}
                  />
              </Grid>
              <Grid item xs={12} sm={6}>
                <FormControl onChange={handleChange}>
                  <FormLabel id="gender-options">Genero</FormLabel>
                  <RadioGroup
                    aria-labelledby="gender-options"
                    name="genero"
                  >
                    <FormControlLabel value="femenino" control={<Radio />} label="Femenino" />
                    <FormControlLabel value="masculino" control={<Radio />} label="Masculino" />
                    <FormControlLabel value="otro" control={<Radio />} label="Otro" />
                  </RadioGroup>
                </FormControl>

              </Grid>
              <Grid item xs={12} sm={6}>
                <FormControl onChange={handleChangeUserRole}>
                  <FormLabel id="user-role">Rol de usuario</FormLabel>
                  <RadioGroup
                    aria-labelledby="user-role"
                    name="rol_usuario_id"
                  >
                    <FormControlLabel value={2} control={<Radio />} label="Aprendiz" />
                    <FormControlLabel value={1} control={<Radio />} label="Profesor" />
                  </RadioGroup>
                </FormControl>
              </Grid>
            </Grid>
            <Grid item xs={12} style={{ padding: isAprendiz ? '16px 0px 0px 0px' : '0px' }}>
              { isAprendiz ? (
                <Autocomplete
                  disablePortal
                  id="tipo_aprendiz"
                  options={metadata.tipoAprendiz}
                  name="tipo_aprendiz"
                  onChange={handleChangeAutocomplete}
                  renderInput={(params) => <TextField {...params} name="tipo_aprendiz" label="Tipo de Aprendiz" />}
                />
              ) : ('')
              }
            </Grid>
            <Grid item xs={12} style={{ padding: isAprendiz ? '16px 0px 0px 0px' : '0px' }}>
              { isAprendiz ? (
                <Autocomplete
                  disablePortal
                  id="grado_instruccion_aprendiz"
                  options={metadata.nivelInstruccion}
                  name="grado_instruccion_aprendiz"
                  onChange={handleChangeAutocomplete}
                  renderInput={(params) => <TextField {...params} name="grado_instruccion_aprendiz"  label="Nivel de instrucción" />}
                />
              ) : ('')
              }
            </Grid>
            <Grid item xs={12} style={{ padding: error ? '16px 0px 0px 0px' : '0px' }}>
              { error ? (
                <Typography variant="caption" display="block" style={{color: 'red'}}>
                  Debe completar todos los campos.
                </Typography>
              ) : ('')
              }
            </Grid>
            <Button
              type="submit"
              fullWidth
              variant="contained"
              sx={{ mt: 3, mb: 2 }}
              disabled={error || loading}
            >
              {loading ? (
                  <CircularProgress color="inherit" size={25} />
                ) : (
                  "Registrarse"
                )}
            </Button>
            <Grid container justifyContent="flex-end">
              <Grid item>
                <Link component="button" variant="body2" onClick={() => {navigate("/login")}}>
                ¿Tienes una cuenta? Inicia sesión
                </Link>
              </Grid>
            </Grid>
          </Box>
        </Box>
        <Copyright sx={{ mt: 5 }} />
      </Container>
    </ThemeProvider>
  );
}