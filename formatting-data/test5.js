const fs = require('fs');
const pool = require('../src/db');


async function createRelations() {

  let todosLosVocablosId = await pool.query("SELECT id FROM public.tema where nombre='Todos los vocablos'");
  todosLosVocablosId = todosLosVocablosId.rows[0].id;

  let vocablosConVideo = await pool.query("SELECT v.id FROM recurso r INNER JOIN vocablo v ON v.id = r.vocablo_id where r.tipo='video' and r.enlace LIKE 'https%';")
  vocablosConVideo = vocablosConVideo.rows.map(elem => elem.id);

  let SQL = `
  --
  -- Asociaciones
  --`;

  vocablosConVideo.forEach(elem => {
    SQL = `${SQL}
INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
  VALUES (6, ${todosLosVocablosId}, ${elem});

`
  });

  fs.writeFileSync('./asociaciones.sql', SQL);
}

createRelations().then(async () => {
  await pool.end();
  console.log('Relaciones creadas');
});