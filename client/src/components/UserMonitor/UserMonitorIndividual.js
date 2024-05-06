import React, { useCallback, useEffect, useState } from 'react';
import {
  Box,
  Grid,
  CircularProgress,
  Typography,
  Table,
  TableBody,
  TableCell,
  TableContainer,
  TableHead,
  TableRow,
  Paper,
  Tabs,
  Tab,
} from '@mui/material';

import { styleUsuarioMonitorModal } from './styles';
import { useNavigate, useParams } from 'react-router-dom';
import { getFilterQueryParams } from '../../utils/getFilterQueryParams';
import ThemeProgressCard from './ThemeProgressCard';
import CustomTabPanel from '../CustomTabPanel';

export default function UserMonitorIndividual() {
  const { userId } = useParams();
  const navigate = useNavigate();

  const [loading, setLoading] = useState(true);
  const [data, setData] = useState();
  const [usuario, setUsuario] = useState();
  const [tab, setTab] = useState(0);

  const [gradoSelected] = useState();
  const [, setGrados] = useState();
  const [rangeSelected] = useState();

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
                    <TableCell align="right" style={{cursor:'pointer'}} onClick={() => navigate(`pruebas`)}>{data?.practicas_realizadas ?? 0}</TableCell>
                    <TableCell align="right">{data?.practicas_last_7days ?? 0}</TableCell>
                    <TableCell align="right">{data?.total_correctas ?? 0}</TableCell>
                    <TableCell align="right">{data?.total_incorrectas ?? 0}</TableCell>
                  </TableRow>
                </TableBody>
              </Table>
            </TableContainer>

            <Tabs value={tab} onChange={(_, newValue) => setTab(newValue)} aria-label="basic tabs example">
              <Tab label="Estudios" />
              <Tab label="Pruebas" />
            </Tabs>

            <CustomTabPanel value={tab} index={0}>
              <Typography variant="h6">
                Vocablos vistos por tema
              </Typography>
              <Grid container columns={{ xs: 4, sm: 8, md: 12 }} >
                {(data?.temas_data ?? [])
                  .map((elem, index) =>
                    <ThemeProgressCard
                      key={index}
                      current={elem.vocablos_vistos_counter || 0}
                      total={elem.vocablos_counter || 0}
                      name={elem.data?.nombre}
                      imageSrc={elem.data?.image_src}
                      progressName="Estudiados"                    
                      progressColor='primary'
                      onClick={() => navigate(`estudios?tema_id=${elem.data?.id}`)}
                    />)}
              </Grid>
            </CustomTabPanel>

            <CustomTabPanel value={tab} index={1}>
              <Typography variant="h6">
                Vocablos contestados de forma correcta por tema
              </Typography>
              <Grid container columns={{ xs: 4, sm: 8, md: 12 }} >
                {(data?.temas_data ?? [])
                  .filter(elem => !elem.data.es_categoria)
                  .map((elem, index) => <ThemeProgressCard
                    key={index}
                    current={elem.vocablos_correctos_counter || 0}
                    total={elem.vocablos_counter || 0}
                    name={elem.data?.nombre}
                    imageSrc={elem.data?.image_src}
                    progressName="Respondidos correctamente en pruebas"
                    extra={`Pruebas realizadas: ${elem.practicas_hechas || 0}`}
                    onClick={() => navigate(`pruebas?tema_id=${elem.data?.id}`)}
                  />)}
              </Grid>
            </CustomTabPanel>
          </Box>
        </Box>
      </Box>
    );
}