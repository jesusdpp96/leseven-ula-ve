const pool = require("../db");

const getUsuario = async (req, res, next) => {
  try {
    const result = await pool.query(`
      SELECT U.*, R.nombre as rol_usuario
      FROM usuario U
      INNER JOIN rol_usuario R ON R.id = U.rol_usuario_id
      WHERE U.id = $1
    `, [req.user]);
    
    const data = result.rows[0];
    
    const result2 = await pool.query(`SELECT * from funcionalidad_sistema WHERE rol_usuario_id = $1`, [result.rows[0].rol_usuario_id]);

    if (result2.rows.length > 0) {
      data.funcionalidad_sistema = result2.rows.map (elem => elem.nombre);
    } 

    res.json(data);
  } catch (error) {
    next(error);
  }
};

// const getVocablosByGradoTema = async (req, res, next) => {
//   try {
//     const { grado_id, tema_id } = req.params;
//     const result = await pool.query(`
//       SELECT GTV.grado_id, GTV.tema_id, GTV.vocablo_id , G.nombre AS grado_nombre, T.nombre AS tema_nombre, T.image_src as tema_image_src,
//       V.palabra AS vocablo_palabra
//       FROM grado_tema_vocablo GTV
//       INNER JOIN grado G ON G.id = GTV.grado_id
//       INNER JOIN tema T ON T.id = GTV.tema_id
//       INNER JOIN vocablo V ON V.id = GTV.vocablo_id
//       WHERE GTV.grado_id = $1 AND GTV.tema_id = $2;
//     `, [grado_id, tema_id]);

//     const result2 = await pool.query(`
//       SELECT GTV.grado_id, GTV.tema_id, GTV.vocablo_id, R.tipo, R.enlace
//       FROM grado_tema_vocablo GTV
//       INNER JOIN recurso R ON R.vocablo_id = GTV.vocablo_id 
//       WHERE GTV.grado_id = $1 AND GTV.tema_id = $2;
//     `, [grado_id, tema_id]);

//     const data = {};
    
//     for (const row of result.rows) {
//       const id = `${row.grado_id}${row.tema_id}${row.vocablo_id}`;
//       data[id] = row;
//     }

//     for (const row of result2.rows) {
//       const id = `${row.grado_id}${row.tema_id}${row.vocablo_id}`;
//       if (data[id]) {
//         if (!data[id].recursos) {
//           data[id].recursos = []
//         }
        
//         data[id].recursos.push(row);
//       }
//     }


//     res.json(Object.values(data));
//   } catch (error) {
//     next(error);
//   }
// };


module.exports = {
  getUsuario,
  // getVocablosByGradoTema
};
