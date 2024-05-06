const { Router } = require("express");
const {
  addUserToMonitor,
  removeUserToMonitor,
  getUsersMonitorData,
  getUserMonitorData,
  getEstudiosUsuario
} = require("../controllers/aprendices-monitor.controller");
const authorization = require("../middleware/authorization");
// const authorization = require("../middleware/authorization");

const router = Router();

// create a task

router.post("/aprendices-monitor/add", authorization, addUserToMonitor);
router.post("/aprendices-monitor/remove", authorization, removeUserToMonitor);

router.get("/aprendices-monitor/users", authorization, getUsersMonitorData);
router.get("/aprendices-monitor/user/:usuario_target_id", authorization, getUserMonitorData);

router.get("/aprendices-monitor/:usuario_target_id/estudios", authorization, getEstudiosUsuario);

module.exports = router;
