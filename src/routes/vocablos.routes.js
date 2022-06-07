const { Router } = require("express");
const {
  getAllVocablos,
  getVocablosByGradoTema,
  postVocabloVisto,
} = require("../controllers/vocablos.controller");
const authorization = require("../middleware/authorization");

const router = Router();

// create a task

router.get("/vocablos", getAllVocablos);

router.get("/vocablos-by-grado-tema/:grado_id/:tema_id", getVocablosByGradoTema);


// TODO: Vocablos vistos

router.post("/vocablo-visto", authorization, postVocabloVisto);

module.exports = router;
