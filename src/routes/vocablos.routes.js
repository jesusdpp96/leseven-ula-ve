const { Router } = require("express");
const {
  getAllVocablos,
  getVocablosByGradoTema
} = require("../controllers/vocablos.controller");

const router = Router();

// create a task

router.get("/vocablos", getAllVocablos);

router.get("/vocablos-by-grado-tema/:grado_id/:tema_id", getVocablosByGradoTema);


module.exports = router;
