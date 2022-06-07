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
  postVocabloVisto
};
