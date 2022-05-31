const pool = require("../db");

const getAllGrados = async (req, res, next) => {
  try {
    const allGrados = await pool.query("SELECT * FROM grado");
    res.json(allGrados.rows);
  } catch (error) {
    next(error);
  }
};

module.exports = {
  getAllGrados
};
