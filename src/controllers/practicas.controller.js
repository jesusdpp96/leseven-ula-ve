const pool = require("../db");

const postPractica = async (req, res, next) => {
  try {
    const { practica, consultas } = req.body;

    const usuario_id = req.user;
    
    const result = await pool.query(
      `INSERT INTO public.practica(fecha, total_consultas, total_correctas, usuario_id, tema_id, grado_id)
        VALUES ($1, $2, $3, $4, $5, $6) RETURNING *`,
      [practica.fecha, practica.total_consultas, practica.total_correctas, usuario_id, practica.tema_id, practica.grado_id]
    );

    const practica_id = result.rows[0].id;

    for (const consulta of consultas) {
      await pool.query(
        `INSERT INTO public.consulta(tipo, vocablo_correcto_id, vocablo_respuesta_id, practica_id)
          VALUES ($1, $2, $3, $4)`,
        [consulta.tipo, consulta.vocablo_correcto_id, consulta.vocablo_respuesta_id, practica_id]
      );
    }

    // res.json(allGrados.rows);
    return res.sendStatus(204);
  } catch (error) {
    next(error);
  }
};

module.exports = {
  postPractica
};
