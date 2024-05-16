const pool = require("./db");

async function dbGetPracticasPorUsuario(usuarioId, filters) {
  let query = `SELECT * FROM public.practica WHERE usuario_id = $1`;
  let params = [usuarioId];
  let filterIndex = 2;

  // Dynamically build query based on filters
  Object.keys(filters).forEach((key) => {
    query += ` AND ${key} = $${filterIndex}`;
    params.push(filters[key]);
    filterIndex++;
  });

  query += ` ORDER BY fecha DESC`;

  const result = await pool.query(query, params);
  return result.rows;
}

async function dbGetEstudiosPorUsuario(usuarioId, filters) {
  let query = `
    SELECT vv.*, v.palabra 
    FROM vocablo_visto vv 
    JOIN vocablo v ON vv.vocablo_id = v.id 
    WHERE usuario_id = $1
  `;
  let params = [usuarioId];
  let filterIndex = 2;

  // Dynamically build query based on filters
  Object.keys(filters).forEach((key) => {
    query += ` AND vv.${key} = $${filterIndex}`;
    params.push(filters[key]);
    filterIndex++;
  });

  query += ` ORDER BY fecha DESC;`;

  const result = await pool.query(query, params);
  return result.rows;
}

async function dbGetPracticaDetails(practicaId) {
  const queryPrueba = `
    SELECT p.*, 
    JSONB_Build_Object('nombre', u.nombre, 'apellido', u.apellido) AS usuario
    FROM practica p
    INNER JOIN usuario u ON p.usuario_id = u.id
    WHERE p.id = $1
    ORDER BY fecha DESC;
  `;
  const paramsPrueba = [practicaId];
  
  const queryConsultas = `
    SELECT c.*, v.palabra 
    FROM consulta c 
    INNER JOIN vocablo v 
    ON c.vocablo_correcto_id = v.id 
    WHERE practica_id = $1
  `;
  const paramsConsultas = [practicaId];

  const [resPrueba, resConsultas] = await Promise.all([
    pool.query(queryPrueba, paramsPrueba),
    pool.query(queryConsultas, paramsConsultas),
  ]);

  return {
    ...resPrueba.rows?.[0],
    consultas: resConsultas.rows
  };
}


module.exports = {
  dbGetPracticasPorUsuario,
  dbGetPracticaDetails,
  dbGetEstudiosPorUsuario
}