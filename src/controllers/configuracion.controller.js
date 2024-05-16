const pool = require("../db");

const createConfiguracion = async (req, res, next) => {
  try {
    const { cantidad_vocablos, categorias_id, tipo_pregunta, tipo_respuesta } =
      req.body;

    const configuracion = await pool.query(
      "INSERT INTO public.configuracion(id, cantidad_vocablos, categorias_id, tipo_pregunta, tipo_respuesta) VALUES ($1, $2, $3, $4) RETURNING *",
      [cantidad_vocablos, categorias_id, tipo_pregunta, tipo_respuesta]
    );

    res.json(configuracion.rows[0]);
  } catch (error) {
    next(error);
  }
};

const getAllConfiguraciones = async (req, res, next) => {
  try {
    const configuraciones = await pool.query("SELECT * FROM configuracion");
    res.json(configuraciones.rows);
  } catch (error) {
    next(error);
  }
};

const getConfiguracion = async (req, res) => {
  try {
    const { id } = req.params;
    const result = await pool.query(
      "SELECT * FROM configuracion WHERE id = $1",
      [id]
    );

    if (result.rows.length === 0)
      return res
        .status(404)
        .json({ status: "error", message: "ET001: Configuracion not found" });

    res.json(result.rows[0]);
  } catch (error) {
    next(error);
  }
};

const updateConfiguracion = async (req, res) => {
  try {
    const { id } = req.params;
    const { cantidad_vocablos, categorias_id, tipo_pregunta, tipo_respuesta } =
      req.body;

    const result = await pool.query(
      "UPDATE configuracion SET cantidad_vocablos = $1, categorias_id = $2, tipo_pregunta = $3, tipo_respuesta = $4 WHERE id = $5 RETURNING *",
      [cantidad_vocablos, categorias_id, tipo_pregunta, tipo_respuesta, id]
    );

    if (result.rows.length === 0)
      return res
        .status(404)
        .json({ status: "error", message: "ET002: Configuracion not found" });

    return res.json(result.rows[0]);
  } catch (error) {
    next(error);
  }
};

const deleteConfiguracion = async (req, res) => {
  try {
    const { id } = req.params;
    const result = await pool.query("DELETE FROM configuracion WHERE id = $1", [
      id,
    ]);

    if (result.rowCount === 0)
      return res
        .status(404)
        .json({ status: "error", message: "ET003: configuracion not found" });
    return res.sendStatus(204);
  } catch (error) {
    next(error);
  }
};

module.exports = {
  createConfiguracion,
  getAllConfiguraciones,
  getConfiguracion,
  updateConfiguracion,
  deleteConfiguracion,
};
