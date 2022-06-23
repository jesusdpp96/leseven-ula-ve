const { Router } = require("express");
const {
  getAllVocablos,
  getVocablosByGradoTema,
  postVocabloVisto,
  getVocablosByTema,
} = require("../controllers/vocablos.controller");
const authorization = require("../middleware/authorization");

const router = Router();

// create a task

router.get("/vocablos", getAllVocablos);

router.get("/vocablos-by-grado-tema/:grado_id/:tema_id", authorization, getVocablosByGradoTema);
router.get("/vocablos-by-tema/:tema_id", authorization, getVocablosByTema);


// TODO: Vocablos vistos

router.post("/vocablo-visto", authorization, postVocabloVisto);

module.exports = router;
