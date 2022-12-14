const pool = require("../db");

const getAllVocablos = async (req, res, next) => {
  try {
    const allVocablos = await pool.query("SELECT * FROM vocablo");
    res.json(allVocablos.rows);
  } catch (error) {
    next(error);
  }
};

const getVocablosByGradoTema = async (req, res, next) => {
  try {
    const { grado_id, tema_id } = req.params;
    const result = await pool.query(`
      SELECT GTV.grado_id, GTV.tema_id, GTV.vocablo_id , G.nombre AS grado_nombre, T.nombre AS tema_nombre, T.image_src as tema_image_src,
      V.palabra AS vocablo_palabra
      FROM grado_tema_vocablo GTV
      INNER JOIN grado G ON G.id = GTV.grado_id
      INNER JOIN tema T ON T.id = GTV.tema_id
      INNER JOIN vocablo V ON V.id = GTV.vocablo_id
      WHERE GTV.grado_id = $1 AND GTV.tema_id = $2;
    `, [grado_id, tema_id]);

    const result2 = await pool.query(`
      SELECT GTV.grado_id, GTV.tema_id, GTV.vocablo_id, R.tipo, R.enlace
      FROM grado_tema_vocablo GTV
      INNER JOIN recurso R ON R.vocablo_id = GTV.vocablo_id 
      WHERE GTV.grado_id = $1 AND GTV.tema_id = $2;
    `, [grado_id, tema_id]);

    const data = {};

    for (const row of result.rows) {
      const id = `${row.grado_id}${row.tema_id}${row.vocablo_id}`;
      data[id] = row;
    }

    for (const row of result2.rows) {
      const id = `${row.grado_id}${row.tema_id}${row.vocablo_id}`;
      if (data[id]) {
        if (!data[id].recursos) {
          data[id].recursos = []
        }
        
        data[id].recursos.push(row);
      }
    }

    const vocablosVistosQuery = await pool.query(
      `SELECT * FROM vocablo_visto WHERE usuario_id = $1 AND grado_id = $2 AND tema_id = $3`,
      [req.user, grado_id, tema_id]
    );

    for (const vv of vocablosVistosQuery.rows) {
      const id = `${vv.grado_id}${vv.tema_id}${vv.vocablo_id}`;
      if (data[id]) {
        data[id].visto = true;
      } else {
        data[id] = {
          visto: true,
        }
      }
    }

    const vocablosCorrectosQuery = await pool.query(
      `SELECT * FROM vocablo_correcto WHERE usuario_id = $1 AND grado_id = $2 AND tema_id = $3`,
      [req.user, grado_id, tema_id]
    );

    for (const vc of vocablosCorrectosQuery.rows) {
      const id = `${vc.grado_id}${vc.tema_id}${vc.vocablo_id}`;
      if (data[id]) {
        data[id].correcto = Boolean(vc.correcto);
      } else {
        data[id] = {
          correcto: Boolean(vc.correcto),
        }
      }
    }


    res.json(Object.values(data));
  } catch (error) {
    next(error);
  }
};

// getVocablosByTema

const getVocablosByTema = async (req, res, next) => {
  try {
    const { tema_id } = req.params;
    const result = await pool.query(`
      SELECT GTV.grado_id, GTV.tema_id, GTV.vocablo_id , G.nombre AS grado_nombre, T.nombre AS tema_nombre, T.image_src as tema_image_src,
      V.palabra AS vocablo_palabra
      FROM grado_tema_vocablo GTV
      INNER JOIN grado G ON G.id = GTV.grado_id
      INNER JOIN tema T ON T.id = GTV.tema_id
      INNER JOIN vocablo V ON V.id = GTV.vocablo_id
      WHERE GTV.tema_id = $1;
    `, [tema_id]);

    const result2 = await pool.query(`
      SELECT GTV.grado_id, GTV.tema_id, GTV.vocablo_id, R.tipo, R.enlace
      FROM grado_tema_vocablo GTV
      INNER JOIN recurso R ON R.vocablo_id = GTV.vocablo_id 
      WHERE GTV.tema_id = $1;
    `, [tema_id]);

    const data = {};

    for (const row of result.rows) {
      const id = `${row.grado_id}${row.tema_id}${row.vocablo_id}`;
      data[id] = row;
    }

    for (const row of result2.rows) {
      const id = `${row.grado_id}${row.tema_id}${row.vocablo_id}`;
      if (data[id]) {
        if (!data[id].recursos) {
          data[id].recursos = []
        }
        
        data[id].recursos.push(row);
      }
    }

    const vocablosVistosQuery = await pool.query(
      `SELECT * FROM vocablo_visto WHERE usuario_id = $1 AND tema_id = $2`,
      [req.user, tema_id]
    );

    for (const vv of vocablosVistosQuery.rows) {
      const id = `${vv.grado_id}${vv.tema_id}${vv.vocablo_id}`;
      if (data[id]) {
        data[id].visto = true;
      } else {
        data[id] = {
          visto: true,
        }
      }
    }

    const vocablosCorrectosQuery = await pool.query(
      `SELECT * FROM vocablo_correcto WHERE usuario_id = $1 AND tema_id = $2`,
      [req.user, tema_id]
    );

    for (const vc of vocablosCorrectosQuery.rows) {
      const id = `${vc.grado_id}${vc.tema_id}${vc.vocablo_id}`;
      if (data[id]) {
        data[id].correcto = Boolean(vc.correcto);
      } else {
        data[id] = {
          correcto: Boolean(vc.correcto),
        }
      }
    }


    res.json(Object.values(data));
  } catch (error) {
    next(error);
  }
};


const postVocabloVisto = async (req, res, next) => {

  try {
    const { grado_id, tema_id, vocablo_id } = req.body;

    if (typeof tema_id !== 'number') {
      throw new Error("tema_id is required");
    }

    if (typeof vocablo_id !== 'number') {
      throw new Error("vocablo_id is required");
    }

    const usuario_id = req.user;

    if (typeof usuario_id !== 'number') {
      throw new Error("authentification is required");
    }

    
    await pool.query(
      `INSERT INTO public.vocablo_visto(usuario_id, grado_id, tema_id, vocablo_id, fecha)
        VALUES ($1, $2, $3, $4, $5)`,
      [usuario_id, grado_id, tema_id, vocablo_id, new Date().toISOString()]
    );
    
    return res.sendStatus(204);
  } catch(err) {

    if (err.message.includes("duplicate key value violates unique constraint")) {
      return res.sendStatus(204);
    } else {
      next(err);
    }
    
  }

  
};

module.exports = {
  getAllVocablos,
  getVocablosByGradoTema,
  getVocablosByTema,
  postVocabloVisto
};
