const pool = require("../db");
const {
  dbGetPracticasPorUsuario,
  dbGetPracticaDetails
} = require("../queries");

const getPracticaDetails = async (req, res, next) => {
  try {
    const practicaId = req.params?.practica_id;
    const result = await dbGetPracticaDetails(practicaId);
    res.json(result);
  } catch (error) {
    next(error);
  }
};

const getPracticasPorUsuario = async (req, res, next) => {
  try {
    const usuarioId = req.params?.user_id;
    const filters = req.query; // This will contain all query parameters as an object
    const result = await dbGetPracticasPorUsuario(usuarioId, filters);
    res.json(result);
  } catch (error) {
    next(error);
  }
};
const postPractica = async (req, res, next) => {
  try {
    const { practica, consultas, puntos, trofeos_imparables, trofeos_agil } = req.body;

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

      const correcto = consulta.vocablo_correcto_id === consulta.vocablo_respuesta_id;

      try {
        await pool.query(
          `INSERT INTO public.vocablo_correcto(usuario_id, grado_id, tema_id, vocablo_id, fecha, correcto)
          VALUES ($1, $2, $3, $4, $5, $6)`,
          [usuario_id, practica.grado_id, practica.tema_id, consulta.vocablo_correcto_id, practica.fecha, correcto]
        );

      } catch (err) {

        try {
          const result = await pool.query(
            `UPDATE public.vocablo_correcto  SET correcto=$6
            WHERE usuario_id=$1 AND grado_id=$2 AND tema_id=$3 AND vocablo_id=$4 AND fecha=$5 RETURNING *`,
            [usuario_id, practica.grado_id, practica.tema_id, consulta.vocablo_correcto_id, practica.fecha, correcto]
          );

          console.log({ result });
        } catch (err2) {
          // nothing
          console.log(err2);
        }
      }
    }

    const usuarioQuery = await pool.query(
      `SELECT id, usuario_metadatos_id
        FROM public.usuario
        WHERE id = $1;`,
      [usuario_id]
    );

    const usuarioMetadatosQuery = await pool.query(
      `
        SELECT id, practicas_realizadas, consultas_correctas, consultas_incorrectas FROM public.usuario_metadatos
        WHERE id = $1;
      `,
      [usuarioQuery.rows[0].usuario_metadatos_id]
    );

    const usuarioMetadatos = usuarioMetadatosQuery.rows[0];

    usuarioMetadatos.practicas_realizadas += 1;
    usuarioMetadatos.consultas_correctas += practica.total_correctas;
    usuarioMetadatos.consultas_incorrectas += practica.total_consultas - practica.total_correctas;

    await pool.query(
      `
        UPDATE public.usuario_metadatos
        SET practicas_realizadas=$1, consultas_correctas=$2, consultas_incorrectas=$3
        WHERE id = $4;
      `,
      [
        usuarioMetadatos.practicas_realizadas,
        usuarioMetadatos.consultas_correctas,
        usuarioMetadatos.consultas_incorrectas,
        usuarioQuery.rows[0].usuario_metadatos_id
      ]
    );

    // res.json(allGrados.rows);
    return res.sendStatus(204);
  } catch (error) {
    next(error);
  }
};

module.exports = {
  getPracticasPorUsuario,
  postPractica,
  getPracticaDetails
};
