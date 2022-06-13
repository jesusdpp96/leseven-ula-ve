const express = require("express");
const cors = require("cors");
const morgan = require("morgan");
const path = require("path");
const authRouter = require("./routes/jwtAuth.routes");
const gradosRouter = require("./routes/grados.routes");
const temasRouter = require("./routes/temas.routes");
const vocablosRouter = require("./routes/vocablos.routes");
const logsRouter = require("./routes/logs.routes");
const usuariosRouter = require("./routes/usuarios.routes");
const practicasRouter = require("./routes/practicas.routes");
const aprendicesMonitorRouter = require("./routes/aprendices-monitor.routes");

const app = express();

// Settings
app.set("port", process.env.PORT || 4000);

// Middlewares
app.use(cors());
app.use(morgan("dev"));
app.use(express.json());
app.use(express.urlencoded({ extended: false }));

if (process.env.NODE_ENV === 'production') {
  // server static content
  // npm run build

  app.use(express.static(path.join(__dirname,"client/build")));
} else {
  // dev mode
  app.use(express.static("./client/build"));
}

// Routes
app.use(authRouter);
app.use(usuariosRouter);
app.use(gradosRouter);
app.use(temasRouter);
app.use(vocablosRouter);
app.use(logsRouter);
app.use(practicasRouter);
app.use(aprendicesMonitorRouter);

// handling errors
app.use((err, req, res, next) => {
  return res.status(500).json({
    status: "error",
    message: err.message,
  });
});

app.get("*", (req,res) => {
  res.sendFile(path.join(__dirname, "client/build/index.html"));
});

app.listen(app.get("port"));
console.log("Server on port", app.get("port"));
