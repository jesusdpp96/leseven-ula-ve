const pool = require("../db");

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

      if (consulta.vocablo_correcto_id === consulta.vocablo_respuesta_id) {
        try {
          await pool.query(
            `INSERT INTO public.vocablo_correcto(usuario_id, grado_id, tema_id, vocablo_id, fecha, correcto)
            VALUES ($1, $2, $3, $4, $5, $6)`,
            [usuario_id, practica.grado_id, practica.tema_id, consulta.vocablo_correcto_id, practica.fecha, true]
          );

        } catch (err) {
          // nothing
          console.log(err);
        }
      } else {
        try {
          await pool.query(
            `INSERT INTO public.vocablo_correcto(usuario_id, grado_id, tema_id, vocablo_id, fecha, correcto)
              VALUES ($1, $2, $3, $4, $5, $6)`,
            [usuario_id, practica.grado_id, practica.tema_id, consulta.vocablo_correcto_id, practica.fecha, false]
          );

        } catch (err) {
          // nothing
          console.log(err);
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
        SELECT id, practicas_realizadas, consultas_correctas, consultas_incorrectas, puntos_acumulados, trofeos_imparables, trofeos_leal, trofeos_agil
        FROM public.usuario_metadatos
        WHERE id = $1;
      `,
      [usuarioQuery.rows[0].usuario_metadatos_id]
    );

    const usuarioMetadatos = usuarioMetadatosQuery.rows[0];

    usuarioMetadatos.practicas_realizadas += 1;
    usuarioMetadatos.consultas_correctas += practica.total_correctas;
    usuarioMetadatos.consultas_incorrectas += practica.total_consultas - practica.total_correctas;
    usuarioMetadatos.puntos_acumulados += puntos;

    if (trofeos_imparables) {
      usuarioMetadatos.trofeos_imparables += trofeos_imparables;
    }

    if (trofeos_agil) {
      usuarioMetadatos.trofeos_agil += trofeos_agil;
    }

    await pool.query(
      `
        UPDATE public.usuario_metadatos
        SET practicas_realizadas=$1, consultas_correctas=$2, consultas_incorrectas=$3, puntos_acumulados=$4, trofeos_imparables=$5, trofeos_leal=$6, trofeos_agil=$7
        WHERE id = $8;
      `,
      [
        usuarioMetadatos.practicas_realizadas,
        usuarioMetadatos.consultas_correctas,
        usuarioMetadatos.consultas_incorrectas,
        usuarioMetadatos.puntos_acumulados,
        usuarioMetadatos.trofeos_imparables,
        usuarioMetadatos.trofeos_leal,
        usuarioMetadatos.trofeos_agil,
        usuarioQuery.rows[0].usuario_metadatos_id
      ]
    );

    if (trofeos_imparables) {
      await pool.query(
        `
        INSERT INTO public.trofeos(usuario_id, tipo, fecha, grado_id, tema_id)
          VALUES ($1, $2, $3, $4, $5)
        `, [usuario_id, 'imparable', new Date().toISOString(), practica.grado_id, practica.tema_id ]
      );
    }

    if (trofeos_agil) {
      await pool.query(
        `
        INSERT INTO public.trofeos(usuario_id, tipo, fecha, grado_id, tema_id)
          VALUES ($1, $2, $3, $4, $5)
        `, [usuario_id, 'agil', new Date().toISOString(), practica.grado_id, practica.tema_id ]
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
