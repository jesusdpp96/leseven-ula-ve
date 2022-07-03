const { Router } = require("express");
const {
  getAllTemas,
  getTemasByGrado
} = require("../controllers/temas.controller");
const authorization = require("../middleware/authorization");

const router = Router();

// create a task

router.get("/temas", authorization, getAllTemas);

router.get("/temas-by-grado/:grado_id", authorization ,getTemasByGrado);


module.exports = router;
