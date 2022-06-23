import React from 'react';
import { styled, createTheme, ThemeProvider, useTheme } from '@mui/material/styles';
import CssBaseline from '@mui/material/CssBaseline';
import MuiDrawer from '@mui/material/Drawer';
import Box from '@mui/material/Box';
import MuiAppBar from '@mui/material/AppBar';
import Toolbar from '@mui/material/Toolbar';
import List from '@mui/material/List';
import Typography from '@mui/material/Typography';
import Divider from '@mui/material/Divider';
import IconButton from '@mui/material/IconButton';
import Container from '@mui/material/Container';
// import Grid from '@mui/material/Grid';
// import Paper from '@mui/material/Paper';
import Link from '@mui/material/Link';
import Avatar from '@mui/material/Avatar';
import MenuIcon from '@mui/icons-material/Menu';
import ChevronLeftIcon from '@mui/icons-material/ChevronLeft';
// import NotificationsIcon from '@mui/icons-material/Notifications';
import { toast } from "react-toastify";
import LogoutIcon from '@mui/icons-material/Logout';
import PeopleIcon from '@mui/icons-material/People';
import DashboardIcon from '@mui/icons-material/Dashboard';
import TravelExploreIcon from '@mui/icons-material/TravelExplore';
import {
  Outlet,
  useNavigate
} from "react-router-dom";
import ListItemButton from '@mui/material/ListItemButton';
import ListItemIcon from '@mui/material/ListItemIcon';
import ListItemText from '@mui/material/ListItemText';
import sendLogs from '../utils/sendLogs';


function Copyright(props) {
  return (
    <Typography variant="body2" color="text.secondary" align="center" {...props}>
      {'Copyright © '}
      <Link color="inherit" href="https://mui.com/">
        Your Website
      </Link>{' '}
      {new Date().getFullYear()}
      {'.'}
    </Typography>
  );
}

const drawerWidth = 240;

const AppBar = styled(MuiAppBar, {
  shouldForwardProp: (prop) => prop !== 'open',
})(({ theme, open }) => ({
  zIndex: theme.zIndex.drawer + 1,
  transition: theme.transitions.create(['width', 'margin'], {
    easing: theme.transitions.easing.sharp,
    duration: theme.transitions.duration.leavingScreen,
  }),
  ...(open && {
    marginLeft: drawerWidth,
    width: `calc(100% - ${drawerWidth}px)`,
    transition: theme.transitions.create(['width', 'margin'], {
      easing: theme.transitions.easing.sharp,
      duration: theme.transitions.duration.enteringScreen,
    }),
  }),
}));

const Drawer = styled(MuiDrawer, { shouldForwardProp: (prop) => prop !== 'open' })(
  ({ theme, open }) => ({
    '& .MuiDrawer-paper': {
      position: 'relative',
      whiteSpace: 'nowrap',
      width: drawerWidth,
      transition: theme.transitions.create('width', {
        easing: theme.transitions.easing.sharp,
        duration: theme.transitions.duration.enteringScreen,
      }),
      boxSizing: 'border-box',
      ...(!open && {
        overflowX: 'hidden',
        transition: theme.transitions.create('width', {
          easing: theme.transitions.easing.sharp,
          duration: theme.transitions.duration.leavingScreen,
        }),
        width: theme.spacing(7),
        [theme.breakpoints.up('sm')]: {
          width: theme.spacing(9),
        },
      }),
    },
  }),
);

const mdTheme = createTheme();

const AccountStyle = styled('div')(({ theme }) => ({
  display: 'flex',
  alignItems: 'center',
  padding: theme.spacing(2, 2.5),
  borderRadius: Number(theme.shape.borderRadius) * 1.5,
  backgroundColor: theme.palette.grey[500_12] || '#ddd',
}));

function PanelItems({funcionalidad_sistema}) {

  const navigate = useNavigate();
  

  if (!funcionalidad_sistema) {
    return null;
  }

  
  const goTo1 = () => {
    // console.log({event:e, name: e.target.name})
    // navigate(e.target.name);
    navigate("practicar");
  }

  const goTo2 = () => {
    // console.log({event:e, name: e.target.name})
    // navigate(e.target.name);
    navigate("supervisar");
  }

  const goTo3 = () => {
    // console.log({event:e, name: e.target.name})
    // navigate(e.target.name);
    navigate("explorar");
  }

  const elements = [
    {
      funcionalidad: 'panel-practica',
      element: (
        <ListItemButton onClick={goTo3} key="pp003">
          <ListItemIcon>
            <TravelExploreIcon />
          </ListItemIcon>
          <ListItemText primary="Explorar" />
        </ListItemButton>
      )
    },
    {
      funcionalidad: 'panel-practica',
      element: (
        <ListItemButton onClick={goTo1} key="pp001">
          <ListItemIcon>
            <DashboardIcon />
          </ListItemIcon>
          <ListItemText primary="Practicar" />
        </ListItemButton>
      )
    },

    {
      funcionalidad: 'panel-profesor',
      element: (
        <ListItemButton onClick={goTo2} key="pp002">
          <ListItemIcon>
            <PeopleIcon />
          </ListItemIcon>
          <ListItemText primary="Supervisar" />
        </ListItemButton>
      )
    },
  ]

  return elements.filter(elem => funcionalidad_sistema.includes(elem.funcionalidad)).map(elem => elem.element);

}

function DashboardContent({setAuth}) {
  const [initialized, setInitialized] = React.useState(false);
  const [open, setOpen] = React.useState(true);
  const [userData, setUserData] = React.useState({});
  const toggleDrawer = () => {
    setOpen(!open);
  };


  const getUserData = async () => {
    try {
      const response = await fetch("/usuario", {
          method: "GET",
          headers: {
            "Content-type": "application/json",
            "token": localStorage.token,
          },
        });
  
      const userDataRes = await response.json();
  
      setUserData({ ...userDataRes});

    } catch(err) {
      console.error(err);
    }
  }

  
  const logout = async (e) => {
    e.preventDefault();
    try {
      localStorage.removeItem("token");
      // toast.success("Logout successfully");
      toast.success("Sesión cerrada");
      setAuth(false); 

      sendLogs({
        logs: [
          {
            "log_name": "Aprendiz: Cierra sesión",
            "timestamp": new Date().toISOString(),
          },
        ]
      })
    } catch (err) {
      console.error(err.message);
    }
  };


  React.useEffect(() => {
    getUserData();
  } , []);

  const theme = useTheme();

  if (!initialized && window.innerWidth <= theme.breakpoints.values.sm) {
    setTimeout(() => {
      setOpen(false);
      setInitialized(true);
    }, 400);
  }

  return (
    <ThemeProvider theme={mdTheme}>
      <Box sx={{ display: 'flex' }}>
        <CssBaseline />
        <AppBar position="absolute" open={open}>
          <Toolbar
            sx={{
              pr: '24px', // keep right padding when drawer closed
            }}
          >
            {
              open ? (
                <IconButton onClick={toggleDrawer}>
                  <ChevronLeftIcon />
                </IconButton>
              ): (
                <IconButton
                  edge="start"
                  color="inherit"
                  aria-label="open drawer"
                  onClick={toggleDrawer}
                  sx={{
                    marginRight: '36px',
                    ...(open && { display: 'none' }),
                  }}
                >
                  <MenuIcon />
                </IconButton>
              )
            }
            <Typography
              component="h1"
              variant="h6"
              color="inherit"
              noWrap
              sx={{ flexGrow: 1 }}
            >
              LeSeVEN - Lengua de Señas Venezolana
            </Typography>
            {/* <IconButton color="inherit">
              <Badge badgeContent={4} color="secondary">
                <NotificationsIcon />
              </Badge>
            </IconButton> */}
            <IconButton
              edge="start"
              color="inherit"
              aria-label="logout"
              onClick={logout}
            >
              <LogoutIcon />
            </IconButton>
          </Toolbar>
        </AppBar>
        <Drawer variant="permanent" open={open} sx={{backgraundColor: '#1976d2', color: "#fff"}}>
          {/* <Toolbar
            sx={{
              display: 'flex',
              alignItems: 'center',
              justifyContent: 'flex-end',
              px: [1],
            }}
          >
            <IconButton onClick={toggleDrawer}>
              <ChevronLeftIcon />
            </IconButton>
          </Toolbar>
          <Divider /> */}
          <Box sx={{ mb: 2, mx: 1.5 }} style={{marginTop:"16px"}}>
            {
              open ? (
                <AccountStyle>
                  <Avatar src="/image.png" alt="photoURL" />
                  <Box sx={{ ml: 1 }}>
                    <Typography variant="subtitle2" sx={{ color: 'text.primary' }}>
                      {`${userData.nombre} ${userData.apellido}`}
                    </Typography>
                    {/* <Typography variant="body2" noWrap={true} style={{width:"100%", fontSize: "80%"}} sx={{ color: 'text.primary' }}>
                      {userData.correo}
                    </Typography> */}
                    <Typography variant="body2" sx={{ color: 'text.secondary' }}>
                      {userData.rol_usuario}
                    </Typography>
                  </Box>
                  
                </AccountStyle>

              ): (null)
            }
          </Box>
          <Divider sx={{ my: 1 }} />
          <List component="nav">
            <PanelItems funcionalidad_sistema={userData.funcionalidad_sistema} />
            {/* {mainListItems}
            <Divider sx={{ my: 1 }} />
            {secondaryListItems} */}
          </List>
        </Drawer>
        <Box
          component="main"
          sx={{
            backgroundColor: (theme) =>
              theme.palette.mode === 'light'
                ? theme.palette.grey[100]
                : theme.palette.grey[900],
            flexGrow: 1,
            height: '100vh',
            overflow: 'auto',
          }}
        >
          <Toolbar />
          <Container maxWidth="lg" sx={{ mt: 4, mb: 4 }}>
            <Outlet />
            <Copyright sx={{ pt: 4 }} />
          </Container>
        </Box>
      </Box>
    </ThemeProvider>
  );
}

export default function Dashboard({setAuth}) {


  return <DashboardContent setAuth={setAuth} />;
}