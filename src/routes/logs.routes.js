const { Router } = require("express");
const {
  addLogs,
  getLogs
} = require("../controllers/logs.controller");
const authorization = require("../middleware/authorization");

const router = Router();

// create a task

router.post("/logs", authorization, addLogs);

router.get("/logs/:usuario_id", getLogs);


module.exports = router;
