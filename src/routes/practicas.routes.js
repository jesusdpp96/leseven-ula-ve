const { Router } = require("express");
const {
  postPractica
} = require("../controllers/practicas.controller");
const authorization = require("../middleware/authorization");

const router = Router();

// create a task

// router.get("/vocablos", getAllVocablos);

router.post("/practica", authorization ,postPractica);


module.exports = router;
