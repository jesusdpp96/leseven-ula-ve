const fs = require('fs');

function sanatizeStr(str) {

  return str
  .trim()
  .toLocaleLowerCase()
  .replace(/\..+/, '')
  .replace(/ü/g,'u')
  .replace(/é/g,'e')
  .replace(/á/g,'a')
  .replace(/í/g,'i')
  .replace(/ó/g,'o')
  .replace(/ú/g,'u')
  .replace(/ñ/g,'n')
  .replace(/\s+/g,'-');
}

function sanatizeImageName(str) {

  return str
  .trim()
  .toLocaleLowerCase()
  .replace(/ü/g,'u')
  .replace(/é/g,'e')
  .replace(/á/g,'a')
  .replace(/í/g,'i')
  .replace(/ó/g,'o')
  .replace(/ú/g,'u')
  .replace(/ñ/g,'n')
  .replace(/'/g,'')
  .replace(/\s+/g,'-');
}

let gradosJSON = fs.readFileSync('./data/grados.json');
let gradosArr = JSON.parse(gradosJSON);

let temasJSON = fs.readFileSync('./data/temas.json');
let temasArr = JSON.parse(temasJSON);

let preescolarJSON = fs.readFileSync('./data/preescolar.json');
let preescolarArr = JSON.parse(preescolarJSON);

let primerGradoJSON = fs.readFileSync('./data/primer-grado.json');
let primerGradoArr = JSON.parse(primerGradoJSON);

let segundoGradoJSON = fs.readFileSync('./data/segundo-grado.json');
let segundoGradoArr = JSON.parse(segundoGradoJSON);

let tercerGradoJSON = fs.readFileSync('./data/tercer-grado.json');
let tercerGradoArr = JSON.parse(tercerGradoJSON);

let cuartoGradoJSON = fs.readFileSync('./data/cuarto-grado.json');
let cuartoGradoArr = JSON.parse(cuartoGradoJSON);

let quintoGradoJSON = fs.readFileSync('./data/quinto-grado.json');
let quintoGradoArr = JSON.parse(quintoGradoJSON);

let sextoGradoJSON = fs.readFileSync('./data/sexto-grado.json');
let sextoGradoArr = JSON.parse(sextoGradoJSON);


const vocablosArr = [];

const gradosHash = {};
const temasHash = {};
const vocablosHash = {};
let recursosIndex = 0;
const gradoTemaExistObj = {};
const gradoTemaVocabloExistObj = {};

let gradosSQL = `
--
-- Grados
--`;
let temasSQL = `
--
-- Temas
--`;
let preescolarSQL = `
--
-- Preescolar
--`;
let primerGradoSQL = `
--
-- Primer Grado
--`;
let segundoGradoSQL = `
--
-- Segundo Grado
--`;
let tercerGradoSQL = `
--
-- Tercer Grado
--`;
let cuartoGradoSQL = `
--
-- Cuarto Grado
--`;
let quintoGradoSQL = `
--
-- Quinto Grado
--`;
let sextoGradoSQL = `
--
-- Sexto Grado
--`;


gradosArr.forEach((elem, index) => {
  const hash = sanatizeStr(elem.nombre); 
  gradosHash[hash] = {...elem, id: index};
});

temasArr.forEach((elem, index) => {
  const hash = sanatizeStr(elem.nombre); 
  temasHash[hash] = {...elem, id: index};
});

/**
 * Grados
 */

Object.values(gradosHash).forEach(elem => {

  gradosSQL = `${gradosSQL}
  INSERT INTO public.grado(id, nombre, image_src)
    VALUES (${elem.id}, '${elem.nombre}', '${elem.image}');

  `
});

/**
 * Temas
 */

Object.values(temasHash).forEach(elem => {

  temasSQL = `${temasSQL}
  INSERT INTO public.tema(id, nombre, image_src, es_categoria)
    VALUES (${elem.id}, '${elem.nombre}', '${elem.image}', ${Boolean(elem.es_categoria)});
  
  `
});

/**
 * Preescolar
 */

Object.values(preescolarArr).forEach(elem => {

  const gradoHash = sanatizeStr(elem.grado);
  let grado = gradosHash[gradoHash];

  if (!grado){
    console.error({grado: 'preescolar', elem});
    throw new Error('Grado no existe');
  }

  const temaHash = sanatizeStr(elem.tema);

  const tema = temasHash[temaHash];

  if (!tema) {
    console.error({grado: 'preescolar', tema: elem.tema , elem});
    throw new Error(`Tema '${elem.tema}' no existe`);
  }

  const vocabloHash = sanatizeStr(elem.palabra);
  let vocablo = vocablosHash[vocabloHash];

  if (!vocablo) {
    recursosIndex += 2;
    vocablosArr.push(elem);
    vocablosHash[vocabloHash] = {...elem, id: vocablosArr.length - 1, image_id: recursosIndex - 2, video_id: recursosIndex - 1};
    vocablo = vocablosHash[vocabloHash];

    const image = sanatizeImageName(elem.image);

    preescolarSQL = `${preescolarSQL}
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (${vocablo.id}, '${vocablo.palabra}', ${tema.id});
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (${vocablo.image_id}, 'image', '${image}', ${vocablo.id});

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (${vocablo.video_id}, 'video', '${elem.video}', ${vocablo.id});
    `;
    
  }

  if (!gradoTemaExistObj[`${grado.id}-${tema.id}`]) {
    
    preescolarSQL = `${preescolarSQL}

    INSERT INTO public.grado_tema(grado_id, tema_id)
      VALUES (${grado.id}, ${tema.id});
    `;
    
    gradoTemaExistObj[`${grado.id}-${tema.id}`] = true;
  }

  if (!gradoTemaVocabloExistObj[`${grado.id}-${tema.id}-${vocablo.id}`]) {
    
    preescolarSQL = `${preescolarSQL}

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (${grado.id}, ${tema.id}, ${vocablo.id});
    `;
    
    gradoTemaVocabloExistObj[`${grado.id}-${tema.id}-${vocablo.id}`] = true;
  }
  
    
});

/**
 * Primer Grado
 */

Object.values(primerGradoArr).forEach(elem => {

  const gradoHash = sanatizeStr(elem.grado);
  let grado = gradosHash[gradoHash];

  if (!grado){
    console.error({grado: 'primer grado', elem});
    throw new Error('Grado no existe');
  }

  const temaHash = sanatizeStr(elem.tema);

  const tema = temasHash[temaHash];

  if (!tema) {
    console.error({grado: 'primer grado', tema: elem.tema , elem});
    throw new Error(`Tema '${elem.tema}' no existe`);
  }

  const vocabloHash = sanatizeStr(elem.palabra);
  let vocablo = vocablosHash[vocabloHash];

  if (!vocablo) {
    recursosIndex += 2;
    vocablosArr.push(elem);
    vocablosHash[vocabloHash] = {...elem, id: vocablosArr.length - 1, image_id: recursosIndex - 2, video_id: recursosIndex - 1};
    vocablo = vocablosHash[vocabloHash];

    const image = sanatizeImageName(elem.image);

    
    primerGradoSQL = `${primerGradoSQL}
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (${vocablo.id}, '${vocablo.palabra}', ${tema.id});
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (${vocablo.image_id}, 'image', '${image}', ${vocablo.id});

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (${vocablo.video_id}, 'video', '${elem.video}', ${vocablo.id});
    `;
  }
    
  if (!gradoTemaExistObj[`${grado.id}-${tema.id}`]) {
    
    primerGradoSQL = `${primerGradoSQL}

    INSERT INTO public.grado_tema(grado_id, tema_id)
      VALUES (${grado.id}, ${tema.id});
    `;
    
    gradoTemaExistObj[`${grado.id}-${tema.id}`] = true;
  }

  if (!gradoTemaVocabloExistObj[`${grado.id}-${tema.id}-${vocablo.id}`]) {
    
    primerGradoSQL = `${primerGradoSQL}

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (${grado.id}, ${tema.id}, ${vocablo.id});
    `;
    
    gradoTemaVocabloExistObj[`${grado.id}-${tema.id}-${vocablo.id}`] = true;
  }
});

/**
 * Segundo Grado
 */

 Object.values(segundoGradoArr).forEach(elem => {

  const gradoHash = sanatizeStr(elem.grado);
  let grado = gradosHash[gradoHash];

  if (!grado){
    console.error({grado: 'segundo grado', elem});
    throw new Error('Grado no existe');
  }

  const temaHash = sanatizeStr(elem.tema);

  const tema = temasHash[temaHash];

  if (!tema) {
    console.error({grado: 'segundo grado', tema: elem.tema , elem});
    throw new Error(`Tema '${elem.tema}' no existe`);
  }

  const vocabloHash = sanatizeStr(elem.palabra);
  let vocablo = vocablosHash[vocabloHash];

  if (!vocablo) {
    recursosIndex += 2;
    vocablosArr.push(elem);
    vocablosHash[vocabloHash] = {...elem, id: vocablosArr.length - 1, image_id: recursosIndex - 2, video_id: recursosIndex - 1};
    vocablo = vocablosHash[vocabloHash];

    const image = sanatizeImageName(elem.image);

    segundoGradoSQL = `${segundoGradoSQL}
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (${vocablo.id}, '${vocablo.palabra}', ${tema.id});
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (${vocablo.image_id}, 'image', '${image}', ${vocablo.id});

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (${vocablo.video_id}, 'video', '${elem.video}', ${vocablo.id});
    `;
  }
    
  if (!gradoTemaExistObj[`${grado.id}-${tema.id}`]) {
    
    segundoGradoSQL = `${segundoGradoSQL}

    INSERT INTO public.grado_tema(grado_id, tema_id)
      VALUES (${grado.id}, ${tema.id});
    `;
    
    gradoTemaExistObj[`${grado.id}-${tema.id}`] = true;
  }

  if (!gradoTemaVocabloExistObj[`${grado.id}-${tema.id}-${vocablo.id}`]) {
    
    segundoGradoSQL = `${segundoGradoSQL}

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (${grado.id}, ${tema.id}, ${vocablo.id});
    `;
    
    gradoTemaVocabloExistObj[`${grado.id}-${tema.id}-${vocablo.id}`] = true;
  }
});

/**
 * Tercer Grado
 */

 Object.values(tercerGradoArr).forEach(elem => {

  const gradoHash = sanatizeStr(elem.grado);
  let grado = gradosHash[gradoHash];

  if (!grado){
    console.error({grado: 'tercer grado', elem});
    throw new Error('Grado no existe');
  }

  const temaHash = sanatizeStr(elem.tema);

  const tema = temasHash[temaHash];

  if (!tema) {
    console.error({grado: 'tercer grado', tema: elem.tema , elem});
    throw new Error(`Tema '${elem.tema}' no existe`);
  }

  const vocabloHash = sanatizeStr(elem.palabra);
  let vocablo = vocablosHash[vocabloHash];

  if (!vocablo) {
    recursosIndex += 2;
    vocablosArr.push(elem);
    vocablosHash[vocabloHash] = {...elem, id: vocablosArr.length - 1, image_id: recursosIndex - 2, video_id: recursosIndex - 1};
    vocablo = vocablosHash[vocabloHash];

    const image = sanatizeImageName(elem.image);

    tercerGradoSQL = `${tercerGradoSQL}
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (${vocablo.id}, '${vocablo.palabra}', ${tema.id});
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (${vocablo.image_id}, 'image', '${image}', ${vocablo.id});

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (${vocablo.video_id}, 'video', '${elem.video}', ${vocablo.id});
    `;
  }
    
  if (!gradoTemaExistObj[`${grado.id}-${tema.id}`]) {
    
    tercerGradoSQL = `${tercerGradoSQL}

    INSERT INTO public.grado_tema(grado_id, tema_id)
      VALUES (${grado.id}, ${tema.id});
    `;
    
    gradoTemaExistObj[`${grado.id}-${tema.id}`] = true;
  }

  if (!gradoTemaVocabloExistObj[`${grado.id}-${tema.id}-${vocablo.id}`]) {
    
    tercerGradoSQL = `${tercerGradoSQL}

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (${grado.id}, ${tema.id}, ${vocablo.id});
    `;
    
    gradoTemaVocabloExistObj[`${grado.id}-${tema.id}-${vocablo.id}`] = true;
  }
});

/**
 * Cuarto Grado
 */

 Object.values(cuartoGradoArr).forEach(elem => {

  const gradoHash = sanatizeStr(elem.grado);
  let grado = gradosHash[gradoHash];

  if (!grado){
    console.error({grado: 'cuarto grado', elem});
    throw new Error('Grado no existe');
  }

  const temaHash = sanatizeStr(elem.tema);

  const tema = temasHash[temaHash];

  if (!tema) {
    console.error({grado: 'cuarto grado', tema: elem.tema , elem});
    throw new Error(`Tema '${elem.tema}' no existe`);
  }

  const vocabloHash = sanatizeStr(elem.palabra);
  let vocablo = vocablosHash[vocabloHash];

  if (!vocablo) {
    recursosIndex += 2;
    vocablosArr.push(elem);
    vocablosHash[vocabloHash] = {...elem, id: vocablosArr.length - 1, image_id: recursosIndex - 2, video_id: recursosIndex - 1};
    vocablo = vocablosHash[vocabloHash];

    const image = sanatizeImageName(elem.image);

    cuartoGradoSQL = `${cuartoGradoSQL}
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (${vocablo.id}, '${vocablo.palabra}', ${tema.id});
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (${vocablo.image_id}, 'image', '${image}', ${vocablo.id});

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (${vocablo.video_id}, 'video', '${elem.video}', ${vocablo.id});
    `;
  }
    
  if (!gradoTemaExistObj[`${grado.id}-${tema.id}`]) {
    
    cuartoGradoSQL = `${cuartoGradoSQL}

    INSERT INTO public.grado_tema(grado_id, tema_id)
      VALUES (${grado.id}, ${tema.id});
    `;
    
    gradoTemaExistObj[`${grado.id}-${tema.id}`] = true;
  }

  if (!gradoTemaVocabloExistObj[`${grado.id}-${tema.id}-${vocablo.id}`]) {
    
    cuartoGradoSQL = `${cuartoGradoSQL}

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (${grado.id}, ${tema.id}, ${vocablo.id});
    `;
    
    gradoTemaVocabloExistObj[`${grado.id}-${tema.id}-${vocablo.id}`] = true;
  }
});


/**
 * Quinto Grado
 */

 Object.values(quintoGradoArr).forEach(elem => {

  const gradoHash = sanatizeStr(elem.grado);
  let grado = gradosHash[gradoHash];

  if (!grado){
    console.error({grado: 'quinto grado', elem});
    throw new Error('Grado no existe');
  }

  const temaHash = sanatizeStr(elem.tema);

  const tema = temasHash[temaHash];

  if (!tema) {
    console.error({grado: 'quinto grado', tema: elem.tema , elem});
    throw new Error(`Tema '${elem.tema}' no existe`);
  }

  const vocabloHash = sanatizeStr(elem.palabra);
  let vocablo = vocablosHash[vocabloHash];

  if (!vocablo) {
    recursosIndex += 2;
    vocablosArr.push(elem);
    vocablosHash[vocabloHash] = {...elem, id: vocablosArr.length - 1, image_id: recursosIndex - 2, video_id: recursosIndex - 1};
    vocablo = vocablosHash[vocabloHash];

    const image = sanatizeImageName(elem.image);

    quintoGradoSQL = `${quintoGradoSQL}
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (${vocablo.id}, '${vocablo.palabra}', ${tema.id});
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (${vocablo.image_id}, 'image', '${image}', ${vocablo.id});

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (${vocablo.video_id}, 'video', '${elem.video}', ${vocablo.id});
    `;
  }
    
  if (!gradoTemaExistObj[`${grado.id}-${tema.id}`]) {
    
    quintoGradoSQL = `${quintoGradoSQL}

    INSERT INTO public.grado_tema(grado_id, tema_id)
      VALUES (${grado.id}, ${tema.id});
    `;
    
    gradoTemaExistObj[`${grado.id}-${tema.id}`] = true;
  }

  if (!gradoTemaVocabloExistObj[`${grado.id}-${tema.id}-${vocablo.id}`]) {
    
    quintoGradoSQL = `${quintoGradoSQL}

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (${grado.id}, ${tema.id}, ${vocablo.id});
    `;
    
    gradoTemaVocabloExistObj[`${grado.id}-${tema.id}-${vocablo.id}`] = true;
  }
});

/**
 * Sexto Grado
 */

 Object.values(sextoGradoArr).forEach(elem => {

  const gradoHash = sanatizeStr(elem.grado);
  let grado = gradosHash[gradoHash];

  if (!grado){
    console.error({grado: 'sexto grado', elem});
    throw new Error('Grado no existe');
  }

  const temaHash = sanatizeStr(elem.tema);

  const tema = temasHash[temaHash];

  if (!tema) {
    console.error({grado: 'sexto grado', tema: elem.tema , elem});
    throw new Error(`Tema '${elem.tema}' no existe`);
  }

  const vocabloHash = sanatizeStr(elem.palabra);
  let vocablo = vocablosHash[vocabloHash];

  if (!vocablo) {
    recursosIndex += 2;
    vocablosArr.push(elem);
    vocablosHash[vocabloHash] = {...elem, id: vocablosArr.length - 1, image_id: recursosIndex - 2, video_id: recursosIndex - 1};
    vocablo = vocablosHash[vocabloHash];

    const image = sanatizeImageName(elem.image);
    
    sextoGradoSQL = `${sextoGradoSQL}
    INSERT INTO public.vocablo(id, palabra, tema_id)
      VALUES (${vocablo.id}, '${vocablo.palabra}', ${tema.id});
    
    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (${vocablo.image_id}, 'image', '${image}', ${vocablo.id});

    INSERT INTO public.recurso(id, tipo, enlace, vocablo_id)
      VALUES (${vocablo.video_id}, 'video', '${elem.video}', ${vocablo.id});
    `;
  }
  
  
  if (!gradoTemaExistObj[`${grado.id}-${tema.id}`]) {
    
    sextoGradoSQL = `${sextoGradoSQL}

    INSERT INTO public.grado_tema(grado_id, tema_id)
      VALUES (${grado.id}, ${tema.id});
    `;
    
    gradoTemaExistObj[`${grado.id}-${tema.id}`] = true;
  }

  if (!gradoTemaVocabloExistObj[`${grado.id}-${tema.id}-${vocablo.id}`]) {
    
    sextoGradoSQL = `${sextoGradoSQL}

    INSERT INTO public.grado_tema_vocablo(grado_id, tema_id, vocablo_id)
      VALUES (${grado.id}, ${tema.id}, ${vocablo.id});
    `;
    
    gradoTemaVocabloExistObj[`${grado.id}-${tema.id}-${vocablo.id}`] = true;
  }
});

const data = `${gradosSQL}\n\n${temasSQL}\n\n${preescolarSQL}\n\n${primerGradoSQL}\n\n${segundoGradoSQL}\n\n${tercerGradoSQL}\n\n${cuartoGradoSQL}\n\n${quintoGradoSQL}\n\n${sextoGradoSQL}`;

// const dataToSave = JSON.stringify(data, null, 2);
fs.writeFileSync('./init-vocablos.sql', data);