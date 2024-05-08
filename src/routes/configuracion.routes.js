const { Router } = require("express");
const {
  createConfiguracion,
  getAllConfiguraciones,
  getConfiguracion,
  updateConfiguracion,
  deleteConfiguracion,
} = require("../controllers/configuracion.controller");

const router = Router();

router.post("/configuracion", createConfiguracion);

router.get("/configuracion", getAllConfiguraciones);

router.get("/configuracion/:id", getConfiguracion);

router.put("/configuracion/:id", updateConfiguracion);

router.delete("/configuracion/:id", deleteConfiguracion);

module.exports = router;
