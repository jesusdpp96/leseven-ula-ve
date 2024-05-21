const pool = require("../db");

function quitarAcentos(cadena) {
  const acentos = {
    á: "a",
    é: "e",
    í: "i",
    ó: "o",
    ú: "u",
    Á: "A",
    É: "E",
    Í: "I",
    Ó: "O",
    Ú: "U",
  };
  return cadena
    .split("")
    .map((letra) => acentos[letra] || letra)
    .join("")
    .toString()
    .replace("ñ", "n");
}
const getAllVocablos = async (req, res, next) => {
  try {
    const { page_number, word_search } = req.params;
    let _limit = 10;
    let list = [];
    let list2 = [];
    let faltantes = [];
    if (word_search === "-1" || word_search === "") {
      const allVocablos = await pool.query(`
      SELECT GTV.grado_id, GTV.tema_id, GTV.vocablo_id , G.nombre AS grado_nombre, T.nombre AS tema_nombre, T.image_src as tema_image_src,
      V.palabra AS vocablo_palabra
      FROM grado_tema_vocablo GTV 
      INNER JOIN grado G ON G.id = GTV.grado_id
      INNER JOIN tema T ON T.id = GTV.tema_id
      INNER JOIN vocablo V ON V.id = GTV.vocablo_id
      ORDER BY vocablo_palabra ASC;
    `);
      const result2 = await pool.query(`
    SELECT GTV.grado_id, GTV.tema_id, GTV.vocablo_id, R.tipo, R.enlace
    FROM grado_tema_vocablo GTV 
    INNER JOIN recurso R ON R.vocablo_id = GTV.vocablo_id;
  `);
      let index = 0;
      const data = {};
      for (const row of allVocablos.rows) {
        const id = `${row.grado_id}${row.tema_id}${row.vocablo_id}`;
        data[id] = row;
        data[id].id2 = index;
        list.push(row);
        index += 1;
      }
      for (const row of result2.rows) {
        const id = `${row.grado_id}${row.tema_id}${row.vocablo_id}`;
        if (data[id]) {
          if (!data[id].recursos) {
            data[id].recursos = [];
          }
          data[id].recursos.push(row);
          list[data[id].id2].recursos.push(row);
        }
      }
      const existsObj = {};

      list?.filter((elem) => {
        if (existsObj[elem.vocablo_id]) {
          return false;
        }
        if (elem?.recursos?.length > 0) {
          itemAgregado = false;
          elem.recursos.map((item) => {
            if (item.tipo === "video" && !itemAgregado) {
              if (
                item.enlace !== "" &&
                item.enlace !== "https://www.youtube.com/watch?v=urpJuQ9IfHc"
              ) {
                itemAgregado = true;
                list2.push(elem);
              } else {
                if (!faltantes.includes(elem.vocablo_palabra))
                  faltantes.push(elem.vocablo_palabra);
              }
            }
          });
        }
        existsObj[elem.vocablo_id] = true;

        return true;
      });
      // console.log("Existentes", list2.length);
      // console.log("faltantes", faltantes.length);

      let total = list2.length;
      start = page_number * _limit - _limit;
      end = page_number * _limit;
      pages = parseInt(list2.length / _limit);
      newData = list2.slice(start, end);

      res.json({
        total: total,
        faltantes:faltantes,
        rows: Object.values(newData),
        page: page_number,
        pages: pages,
      });
    } else {
      const allVocablos = await pool.query(`
      SELECT GTV.grado_id, GTV.tema_id, GTV.vocablo_id , G.nombre AS grado_nombre, T.nombre AS tema_nombre, T.image_src as tema_image_src,
      V.palabra AS vocablo_palabra
      FROM grado_tema_vocablo GTV 
      INNER JOIN grado G ON G.id = GTV.grado_id
      INNER JOIN tema T ON T.id = GTV.tema_id
      INNER JOIN vocablo V ON V.id = GTV.vocablo_id
      ORDER BY vocablo_palabra ASC;
    `);
      const result2 = await pool.query(`
    SELECT GTV.grado_id, GTV.tema_id, GTV.vocablo_id, R.tipo, R.enlace
    FROM grado_tema_vocablo GTV 
    INNER JOIN recurso R ON R.vocablo_id = GTV.vocablo_id;
  `);
      let index = 0;
      const data = {};
      for (const row of allVocablos.rows) {
        const id = `${row.grado_id}${row.tema_id}${row.vocablo_id}`;
        wordRow = quitarAcentos(row.vocablo_palabra.toLowerCase());
        if (wordRow.includes(quitarAcentos(word_search.toLowerCase()))) {
          data[id] = row;
          data[id].id2 = index;
          list.push(row);
          index += 1;
        }
      }
      for (const row of result2.rows) {
        const id = `${row.grado_id}${row.tema_id}${row.vocablo_id}`;
        if (data[id]) {
          if (!data[id].recursos) {
            data[id].recursos = [];
          }

          data[id].recursos.push(row);
          list[data[id].id2].recursos.push(row);
        }
      }
      const existsObj = {};
      list?.filter((elem) => {
        if (existsObj[elem.vocablo_id]) {
          return false;
        }
        if (elem.recursos.length > 0) {
          itemAgregado = false;
          elem.recursos.map((item) => {
            if (item.tipo === "video" && !itemAgregado) {
              if (
                item.enlace !== "" &&
                item.enlace !== "https://www.youtube.com/watch?v=urpJuQ9IfHc"
              ) {
                itemAgregado = true;
                list2.push(elem);
              }else {
                if (!faltantes.includes(elem.vocablo_palabra))
                  faltantes.push(elem.vocablo_palabra);
              }
            }
          });
        }
        existsObj[elem.vocablo_id] = true;

        return true;
      });

      let total = list2.length;
      start = page_number * _limit - _limit;
      end = page_number * _limit;
      pages = parseInt(list2.length / _limit);
      newData = list2.slice(start, end);

      res.json({
        total: total,
        faltantes: faltantes,
        rows: Object.values(newData),
        page: page_number,
        pages: pages,
      });
    }
  } catch (error) {
    console.error(error)
    next(error);
  }
};
function getRandomInt(max) {
  return Math.floor(Math.random() * max);
}
const getVocablosByGradoTema = async (req, res, next) => {
  try {
    const { grado_id, tema_id, vocablos_number } = req.params;
    let list = [];
    let list2 = [];
    if (parseInt(vocablos_number) === 100) {
      const result = await pool.query(
        `
        SELECT GTV.grado_id, GTV.tema_id, GTV.vocablo_id , G.nombre AS grado_nombre, T.nombre AS tema_nombre, T.image_src as tema_image_src,
        V.palabra AS vocablo_palabra
        FROM grado_tema_vocablo GTV 
        INNER JOIN grado G ON G.id = GTV.grado_id
        INNER JOIN tema T ON T.id = GTV.tema_id
        INNER JOIN vocablo V ON V.id = GTV.vocablo_id
        WHERE GTV.grado_id = $1 AND GTV.tema_id = $2;
      `,
        [grado_id, tema_id]
      );
      const result2 = await pool.query(
        `
        SELECT GTV.grado_id, GTV.tema_id, GTV.vocablo_id, R.tipo, R.enlace
        FROM grado_tema_vocablo GTV 
        INNER JOIN recurso R ON R.vocablo_id = GTV.vocablo_id
        WHERE GTV.grado_id = $1 AND GTV.tema_id = $2
      `,
        [grado_id, tema_id]
      );
      let index = 0;
      const data = {};
      const data2 = {};
      for (const row of result.rows) {
        const id = `${row.grado_id}${row.tema_id}${row.vocablo_id}`;
        data[id] = row;
        data[id].id2 = index;
        list.push(row);
        index += 1;
      }
      for (const row of result2.rows) {
        const id = `${row.grado_id}${row.tema_id}${row.vocablo_id}`;
        if (data[id]) {
          if (!data[id].recursos) {
            data[id].recursos = [];
          }
          list[data[id].id2].recursos.push(row);
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
          list[data[id].id2].visto = true;
          data[id].visto = true;
        } else {
          data[id] = {
            visto: true,
          };
        }
      }

      const vocablosCorrectosQuery = await pool.query(
        `SELECT * FROM vocablo_correcto WHERE usuario_id = $1 AND grado_id = $2 AND tema_id = $3`,
        [req.user, grado_id, tema_id]
      );

      for (const vc of vocablosCorrectosQuery.rows) {
        const id = `${vc.grado_id}${vc.tema_id}${vc.vocablo_id}`;
        if (data[id]) {
          list[data[id].id2].correcto = Boolean(vc.correcto);
          data[id].correcto = Boolean(vc.correcto);
        } else {
          data[id] = {
            correcto: Boolean(vc.correcto),
          };
        }
      }
      const existsObj = {};

      list?.filter((elem) => {
        if (existsObj[elem.vocablo_id]) {
          return false;
        }
        if (elem?.recursos?.length > 0) {
          itemAgregado = false;
          elem.recursos.map((item) => {
            if (item.tipo === "video" && !itemAgregado) {
              if (
                item.enlace !== "" &&
                item.enlace !== "https://www.youtube.com/watch?v=urpJuQ9IfHc"
              ) {
                itemAgregado = true;
                list2.push(elem);
              }
            }
          });
        }
        existsObj[elem.vocablo_id] = true;

        return true;
      });

      list2?.map((item) => {
        data2[item.vocablo_id] = item;
      });

      res.json(Object.values(data2));
    } else {
      const result = await pool.query(
        `
        SELECT GTV.grado_id, GTV.tema_id, GTV.vocablo_id , G.nombre AS grado_nombre, T.nombre AS tema_nombre, T.image_src as tema_image_src,
        V.palabra AS vocablo_palabra
        FROM grado_tema_vocablo GTV 
        INNER JOIN grado G ON G.id = GTV.grado_id
        INNER JOIN tema T ON T.id = GTV.tema_id
        INNER JOIN vocablo V ON V.id = GTV.vocablo_id
        WHERE GTV.grado_id = $1 AND GTV.tema_id = $2;
      `,
        [grado_id, tema_id]
      );
      const result2 = await pool.query(
        `
        SELECT GTV.grado_id, GTV.tema_id, GTV.vocablo_id, R.tipo, R.enlace
        FROM grado_tema_vocablo GTV 
        INNER JOIN recurso R ON R.vocablo_id = GTV.vocablo_id
        WHERE GTV.grado_id = $1 AND GTV.tema_id = $2
      `,
        [grado_id, tema_id]
      );

      const data = {};
      for (const row of result.rows) {
        const id = `${row.grado_id}${row.tema_id}${row.vocablo_id}`;
        data[id] = row;
      }
      let ids = [];

      for (const row of result2.rows) {
        const id = `${row.grado_id}${row.tema_id}${row.vocablo_id}`;
        if (!ids.includes(id)) {
          ids.push(id);
        }
        if (data[id]) {
          if (!data[id].recursos) {
            data[id].recursos = [];
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
          };
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
          };
        }
      }
      let randomNumbers = [];
      maxVocablos =
        result.rows.length >= parseInt(vocablos_number)
          ? parseInt(vocablos_number)
          : result.rows.length  > 0
          ? result.rows.length
          : 1;
      while (randomNumbers.length < maxVocablos) {
        const randomNumber = getRandomInt(result.rows.length);
        if (!randomNumbers.includes(randomNumber)) {
          randomNumbers.push(randomNumber);
        }
      }
      let i = 0;
      let data2 = {};
      for (i = 0; i < maxVocablos; i++) {
        itemAgregado = false;
        data?.[`${ids[i]}`]?.recursos?.map((item) => {
          if (item.tipo === "video" && !itemAgregado) {
            if (
              item.enlace !== "" &&
              item.enlace !== "https://www.youtube.com/watch?v=urpJuQ9IfHc"
            ) {
              itemAgregado = true;
              data2[`${ids[randomNumbers[i]]}`] = data[`${ids[i]}`];
            }
          }
        });
      }
      res.json(Object.values(data2));
    }
  } catch (error) {
    next(error);
  }
};

// getVocablosByTema

const getVocablosByTema = async (req, res, next) => {
  try {
    let list = [];
    let list2 = [];
    const { tema_id } = req.params;
    const result = await pool.query(
      `
      SELECT GTV.grado_id, GTV.tema_id, GTV.vocablo_id , G.nombre AS grado_nombre, T.nombre AS tema_nombre, T.image_src as tema_image_src,
      V.palabra AS vocablo_palabra
      FROM grado_tema_vocablo GTV
      INNER JOIN grado G ON G.id = GTV.grado_id
      INNER JOIN tema T ON T.id = GTV.tema_id
      INNER JOIN vocablo V ON V.id = GTV.vocablo_id
      WHERE GTV.tema_id = $1;
    `,
      [tema_id]
    );

    const result2 = await pool.query(
      `
      SELECT GTV.grado_id, GTV.tema_id, GTV.vocablo_id, R.tipo, R.enlace
      FROM grado_tema_vocablo GTV
      INNER JOIN recurso R ON R.vocablo_id = GTV.vocablo_id 
      WHERE GTV.tema_id = $1;
    `,
      [tema_id]
    );
    let index = 0;
    const data = {};
    const data2 = {};
    for (const row of result.rows) {
      const id = `${row.grado_id}${row.tema_id}${row.vocablo_id}`;
      data[id] = row;
      data[id].id2 = index;
      list.push(row);
      index += 1;
    }

    for (const row of result2.rows) {
      const id = `${row.grado_id}${row.tema_id}${row.vocablo_id}`;
      if (data[id]) {
        if (!data[id].recursos) {
          data[id].recursos = [];
        }

        list[data[id].id2].recursos.push(row);
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
        list[data[id].id2].visto = true;
        data[id].visto = true;
      } else {
        data[id] = {
          visto: true,
        };
      }
    }

    const vocablosCorrectosQuery = await pool.query(
      `SELECT * FROM vocablo_correcto WHERE usuario_id = $1 AND tema_id = $2`,
      [req.user, tema_id]
    );

    for (const vc of vocablosCorrectosQuery.rows) {
      const id = `${vc.grado_id}${vc.tema_id}${vc.vocablo_id}`;
      if (data[id]) {
        list[data[id].id2].correcto = Boolean(vc.correcto);
        data[id].correcto = Boolean(vc.correcto);
      } else {
        data[id] = {
          correcto: Boolean(vc.correcto),
        };
      }
    }
    const existsObj = {};
    list?.filter((elem) => {
      if (existsObj[elem.vocablo_id]) {
        return false;
      }
      if (elem.recursos.length > 0) {
        itemAgregado = false;
        elem.recursos.map((item) => {
          if (item.tipo === "video" && !itemAgregado) {
            if (
              item.enlace !== "" &&
              item.enlace !== "https://www.youtube.com/watch?v=urpJuQ9IfHc"
            ) {
              itemAgregado = true;
              list2.push(elem);
            }
          }
        });
      }
      existsObj[elem.vocablo_id] = true;

      return true;
    });

    list2?.map((item) => {
      data2[item.vocablo_id] = item;
    });
    res.json(Object.values(data2));
  } catch (error) {
    next(error);
  }
};

const contarTodosLosVocablos = async (req, res, next) => {
  try {
   
    const result = await pool.query(`SELECT COUNT(enlace) FROM recurso WHERE enlace LIKE 'https%';`);
    
    res.json(result.rows[0]);
  } catch (error) {
    next(error);
  }
};

const postVocabloVisto = async (req, res, next) => {
  try {
    const { grado_id, tema_id, vocablo_id } = req.body;

    if (typeof tema_id !== "number") {
      throw new Error("tema_id is required");
    }

    if (typeof vocablo_id !== "number") {
      throw new Error("vocablo_id is required");
    }

    const usuario_id = req.user;

    if (typeof usuario_id !== "number") {
      throw new Error("authentification is required");
    }

    await pool.query(
      `INSERT INTO public.vocablo_visto(usuario_id, grado_id, tema_id, vocablo_id, fecha)
        VALUES ($1, $2, $3, $4, $5)`,
      [usuario_id, grado_id, tema_id, vocablo_id, new Date().toISOString()]
    );

    return res.sendStatus(204);
  } catch (err) {
    if (
      err.message.includes("duplicate key value violates unique constraint")
    ) {
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
  postVocabloVisto,
  contarTodosLosVocablos
};
