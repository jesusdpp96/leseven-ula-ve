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

async function dbGetPracticaDetails(practicaId) {
  const query = `
    SELECT p.*, 
    JSONB_Build_Object('nombre', u.nombre, 'apellido', u.apellido) AS usuario,
    to_jsonb(c) AS consultas
    FROM practica p
    INNER JOIN usuario u ON p.usuario_id = u.id
    LEFT JOIN consulta c ON p.id = c.practica_id
    WHERE p.id = $1
    ORDER BY fecha DESC;
  `;


  const params = [practicaId];
  const result = await pool.query(query, params);
  return result.rows?.[0];
}


module.exports = {
  dbGetPracticasPorUsuario,
  dbGetPracticaDetails
}