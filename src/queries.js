const pool = require("./db");

async function dbGetPracticasPorUsuario(usuarioId) {
  const result = await pool.query(
    `SELECT * FROM public.practica
      WHERE usuario_id = $1
      ORDER BY fecha DESC`,
    [usuarioId]
  );
  return result.rows;
}

module.exports = {
  dbGetPracticasPorUsuario
}