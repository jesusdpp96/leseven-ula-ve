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


module.exports = {
  dbGetPracticasPorUsuario
}