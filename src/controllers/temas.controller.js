const pool = require("../db");

const getAllTemas = async (req, res, next) => {
  try {
    const allTemas = await pool.query("SELECT * FROM tema");
    res.json(allTemas.rows);
  } catch (error) {
    next(error);
  }
};

const getTemasByGrado = async (req, res, next) => {
  try {
    const { grado_id } = req.params;
    const result = await pool.query(`
      SELECT GT.grado_id, GT.tema_id , G.nombre AS grado_nombre, T.nombre AS tema_nombre, T.image_src as tema_image_src
      FROM grado_tema GT
      INNER JOIN grado G ON G.id = GT.grado_id
      INNER JOIN tema T ON T.id = GT.tema_id  
      WHERE GT.grado_id = $1
    `, [grado_id]);

    res.json(result.rows);
  } catch (error) {
    next(error);
  }
};


module.exports = {
  getAllTemas,
  getTemasByGrado
};
