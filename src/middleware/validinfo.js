module.exports = (req, res, next) => {
  const { nombre, apellido, correo, contrasena, escuela, ciudad, pais, tipo_aprendiz, grado_instruccion_aprendiz, fecha_nacimiento, rol_usuario_id, genero } = req.body;

  function validEmail(loginEmail) {
    return /^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/.test(loginEmail);
  }

  if (req.path === "/register") {
    console.log(!correo.length);
    if (rol_usuario_id === 1 && ![nombre, apellido, correo, contrasena, escuela, ciudad, pais, tipo_aprendiz, grado_instruccion_aprendiz, fecha_nacimiento, rol_usuario_id,genero].every(Boolean)) {
      return res.status(401).json("Missing data");
    } else if (rol_usuario_id === 2 && ![nombre, apellido, correo, contrasena, escuela, ciudad, pais, fecha_nacimiento, rol_usuario_id,genero].every(Boolean)) {
      return res.status(401).json("Missing data");
    }  else if (!validEmail(correo)) {
      return res.status(401).json("Invalid Email");
    }
  } else if (req.path === "/login") {
    if (![correo, password].every(Boolean)) {
      return res.status(401).json("Missing Credentials");
    } else if (!validEmail(correo)) {
      return res.status(401).json("Invalid Email");
    }
  }

  next();
};
