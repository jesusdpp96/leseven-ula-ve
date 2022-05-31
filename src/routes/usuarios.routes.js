const { Router } = require("express");
const {
  getUsuario,
} = require("../controllers/usuarios.controller");
const authorization = require("../middleware/authorization");

const router = Router();

// create a task

router.get("/usuario", authorization, getUsuario);

// router.get("/vocablos-by-grado-tema/:grado_id/:tema_id", getVocablosByGradoTema);


module.exports = router;
