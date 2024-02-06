const jwt = require("jsonwebtoken");
require("dotenv").config();

module.exports = async (req, res, next) => {
  console.log(req.header("token"));
  try {
    const jwtToken = req.header("token");

    if (!jwtToken) {
      return res.status(403).json({status: 'error', message: "EA001: Not authorized" });
    }

    const payload = jwt.verify(jwtToken, process.env.jwtSecret);

    req.user = payload.user;

    console.log({jwtPayload: payload});

    next();
  } catch (err) {
    console.error(err.message);
    return res.status(403).json({status: 'error', message: "EA002: Not authorized" });
  }
};
