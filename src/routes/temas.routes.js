const { Router } = require("express");
const {
  getAllTemas,
  getTemasByGrado
} = require("../controllers/temas.controller");

const router = Router();

// create a task

router.get("/temas", getAllTemas);

router.get("/temas-by-grado/:grado_id", getTemasByGrado);


module.exports = router;
