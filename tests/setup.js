const sqlite3 = require('sqlite3').verbose();

async function setup() {
  const db = await new Promise((resolve, reject) => {
    const db = new sqlite3.Database(':memory:', (err) => {
      if (err) {
        reject(err.message);
      }
      resolve(db);
    });
  });

  return db;
};

module.exports = { setup };