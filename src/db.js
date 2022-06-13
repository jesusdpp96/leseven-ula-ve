const { Pool } = require("pg");

const devConfig = {
  user: process.env.DB_USER || "postgres",
  password: process.env.DB_PASSWORD || "",
  host: process.env.DB_HOST || "localhost",
  port: process.env.DB_PORT || 5432,
  database: process.env.DB_DATABASE || "practica_lsv_db",
}

const proConfig = {
  connectionString: process.env.DATABASE_URL, // heroku-addons
  ssl: {
    rejectUnauthorized: false
  }
}

const pool = new Pool(process.env.NODE_ENV === 'production' ? proConfig : devConfig);

module.exports = pool;
