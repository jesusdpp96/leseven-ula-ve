const { Router } = require("express");
const {
  postPractica, getPracticasPorUsuario, getPracticaDetails
} = require("../controllers/practicas.controller");
const authorization = require("../middleware/authorization");

const router = Router();

router.get("/practica/details/:practica_id", getPracticaDetails);
router.get("/practica/:user_id", authorization, getPracticasPorUsuario);
router.post("/practica", authorization, postPractica);


module.exports = router;
