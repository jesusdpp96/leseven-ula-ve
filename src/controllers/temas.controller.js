const pool = require("../db");

const getAllTemas = async (req, res, next) => {
  try {
    const result = await pool.query(`
      SELECT GT.grado_id, GT.tema_id , G.nombre AS grado_nombre, T.nombre AS tema_nombre, T.image_src as tema_image_src, T.es_categoria
      FROM grado_tema GT
      INNER JOIN grado G ON G.id = GT.grado_id
      INNER JOIN tema T ON T.id = GT.tema_id  
    `);

    const temasDataObj = result.rows.reduce((prev, current) => {
      prev[current.tema_id] = current;
      return prev;
    }, {});

    const gtvQuery = await pool.query(`SELECT * FROM grado_tema_vocablo`);

    const vocabloExistsObj = {};
    const vocabloExistsObj2 = {};

    for (const vocablo of gtvQuery.rows) {

      if (vocabloExistsObj[vocablo.vocablo_id]) {
        continue;
      }

      vocabloExistsObj[vocablo.vocablo_id] = true;

      if (temasDataObj[vocablo.tema_id] && temasDataObj[vocablo.tema_id].vocablos_counter) {
        temasDataObj[vocablo.tema_id].vocablos_counter += 1;
      } else if(temasDataObj[vocablo.tema_id]) {
        temasDataObj[vocablo.tema_id].vocablos_counter = 1;
      } else {
        temasDataObj[vocablo.tema_id] = {
          vocablos_counter: 1,
        }
      }
    }
  
    const vocablosVistosQuery = await pool.query(`SELECT * FROM vocablo_visto WHERE usuario_id = $1`, [req.user]);


    for (const vv of vocablosVistosQuery.rows) {

      if (vocabloExistsObj2[vv.vocablo_id]) {
        continue;
      }

      vocabloExistsObj2[vv.vocablo_id] = true;

      if (temasDataObj[vv.tema_id] && temasDataObj[vv.tema_id].vocablos_vistos) {
        temasDataObj[vv.tema_id].vocablos_vistos += 1;
      } else if(temasDataObj[vv.tema_id]) {
        temasDataObj[vv.tema_id].vocablos_vistos = 1;
      } else {
        temasDataObj[vv.tema_id] = {
          vocablos_vistos: 1,
        }
      }
    }
    
    res.json(Object.values(temasDataObj));
  } catch (error) {
    next(error);
  }
};

const getTemasByGrado = async (req, res, next) => {
  try {
    const { grado_id } = req.params;
    const result = await pool.query(`
      SELECT GT.grado_id, GT.tema_id , G.nombre AS grado_nombre, T.nombre AS tema_nombre, T.image_src as tema_image_src, T.es_categoria
      FROM grado_tema GT
      INNER JOIN grado G ON G.id = GT.grado_id
      INNER JOIN tema T ON T.id = GT.tema_id  
      WHERE GT.grado_id = $1
    `, [grado_id]);

    const temasDataObj = result.rows.reduce((prev, current) => {
      prev[current.tema_id] = current;
      return prev;
    }, {});

    const gtvQuery = await pool.query(`SELECT * FROM grado_tema_vocablo WHERE grado_id = $1`, [grado_id]);

    for (const vocablo of gtvQuery.rows) {
      if (temasDataObj[vocablo.tema_id] && temasDataObj[vocablo.tema_id].vocablos_counter) {
        temasDataObj[vocablo.tema_id].vocablos_counter += 1;
      } else if(temasDataObj[vocablo.tema_id]) {
        temasDataObj[vocablo.tema_id].vocablos_counter = 1;
      } else {
        temasDataObj[vocablo.tema_id] = {
          vocablos_counter: 1,
        }
      }
    }
    


    const vocablosVistosQuery = await pool.query(`SELECT * FROM vocablo_visto WHERE usuario_id = $1 AND grado_id = $2`, [req.user, grado_id]);


    for (const vv of vocablosVistosQuery.rows) {
      if (temasDataObj[vv.tema_id] && temasDataObj[vv.tema_id].vocablos_vistos) {
        temasDataObj[vv.tema_id].vocablos_vistos += 1;
      } else if(temasDataObj[vv.tema_id]) {
        temasDataObj[vv.tema_id].vocablos_vistos = 1;
      } else {
        temasDataObj[vv.tema_id] = {
          vocablos_vistos: 1,
        }
      }
    }


    res.json(Object.values(temasDataObj));
  } catch (error) {
    next(error);
  }
};


module.exports = {
  getAllTemas,
  getTemasByGrado
};
