const { Router } = require("express");
const {
  postPractica, getPracticasPorUsuario
} = require("../controllers/practicas.controller");
const authorization = require("../middleware/authorization");

const router = Router();

router.get("/practica/:user_id", authorization, getPracticasPorUsuario);
router.post("/practica", authorization, postPractica);


module.exports = router;
