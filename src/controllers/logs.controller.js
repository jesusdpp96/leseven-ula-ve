const getDateYYYYMMDD = require("../utils/getDateYYYYMMDD");

const pool = require("../db");

const addLogs = async (req, res, next) => {
  try {
    // const { usuario_id } = req.params;

    const usuario_id = req.user;

    if (typeof usuario_id !== 'number') {
      throw new Error ("user needed");
    }
    const { logs } = req.body;

    if (!logs || logs.length === 0) {
      throw new Error ("logs needed");
    }

    const fecha = getDateYYYYMMDD(new Date());
    const result = await pool.query("SELECT * FROM usuario_log WHERE usuario_id = $1 AND fecha=$2 ", [usuario_id, fecha]);

    let arrJSONLog;
    let exists = false;

    if (result.rows.length > 0) {
      arrJSONLog = result.rows[0].data;
      exists = true;
    } else {
      arrJSONLog = [];
    }
    
    arrJSONLog.push(...logs);

    const arrJSONLogSanatized = (JSON.stringify(arrJSONLog));
    let result2;

    if (exists) {
      result2 = await pool.query(
        "UPDATE usuario_log SET data = $3 WHERE usuario_id = $1 AND fecha = $2  RETURNING *",
        [usuario_id, fecha, arrJSONLogSanatized]
      );
    } else {
      result2 = await pool.query(
        "INSERT INTO usuario_log (usuario_id, fecha, data) VALUES($1, $2, $3) RETURNING *",
        [usuario_id, fecha, arrJSONLogSanatized]
      );
    }


    // res.json(result2.rows[0]);
    return res.sendStatus(204);
  } catch (error) {
    next(error);
  }
};

const getLogs = async (req, res, next) => {
  try {
    const { usuario_id } = req.params;
    const result = await pool.query("SELECT * FROM usuario_log WHERE usuario_id = $1", [usuario_id]);

    res.json(result.rows);
  } catch (error) {
    next(error);
  }
};

module.exports = {
  addLogs,
  getLogs
};
