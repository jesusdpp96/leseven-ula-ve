const { Router } = require("express");
const {
  getAllVocablos,
  getVocablosByGradoTema,
  postVocabloVisto,
  getVocablosByTema,
  contarTodosLosVocablos
} = require("../controllers/vocablos.controller");
const authorization = require("../middleware/authorization");

const router = Router();

// create a task

router.get("/vocablos/:page_number/:word_search", authorization,getAllVocablos);

router.get("/vocablos-by-grado-tema/:grado_id/:tema_id/:vocablos_number", authorization, getVocablosByGradoTema);
router.get("/vocablos-by-tema/:tema_id", authorization, getVocablosByTema);

router.get("/contar-vocablos", contarTodosLosVocablos);



// TODO: Vocablos vistos

router.post("/vocablo-visto", authorization, postVocabloVisto);

module.exports = router;
