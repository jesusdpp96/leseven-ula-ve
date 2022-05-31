const { Router } = require("express");
const {
  getAllGrados,
} = require("../controllers/grados.controller");
// const authorization = require("../middleware/authorization");

const router = Router();

// create a task

router.get("/grados", getAllGrados);


module.exports = router;
