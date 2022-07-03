const fs = require('fs');

function sanatizeStr(str) {

  if (typeof str !== 'string') {
    return '';
  }
  
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

let palabrasVideosJSON = fs.readFileSync('./data/palabras-videos-2.json');
let palabrasVideosArr = JSON.parse(palabrasVideosJSON);

const existsObj = {};

sextoGradoArr.forEach(element => {
  const palabra = sanatizeStr(element.palabra);
  existsObj[palabra] = element.grado;
});

quintoGradoArr.forEach(element => {
  const palabra = sanatizeStr(element.palabra);
  existsObj[palabra] = element.grado;
});

cuartoGradoArr.forEach(element => {
  const palabra = sanatizeStr(element.palabra);
  existsObj[palabra] = element.grado;
});

tercerGradoArr.forEach(element => {
  const palabra = sanatizeStr(element.palabra);
  existsObj[palabra] = element.grado;
});

segundoGradoArr.forEach(element => {
  const palabra = sanatizeStr(element.palabra);
  existsObj[palabra] = element.grado;
});

primerGradoArr.forEach(element => {
  const palabra = sanatizeStr(element.palabra);
  existsObj[palabra] = element.grado;
});

preescolarArr.forEach(element => {
  const palabra = sanatizeStr(element.palabra);
  existsObj[palabra] = element.grado;
});


const existsObj2  = {}
const counterObj  = {}

let counter = 0;

palabrasVideosArr.forEach(element => {

  const palabra = sanatizeStr(element);

  if (existsObj2[palabra]) {
    return;
  }

  existsObj2[palabra] = true;
  
  const grado = existsObj[palabra];

  if (grado) {
    counter +=1;
    if (counterObj[grado]) {
      counterObj[grado] += 1;
    } else {
      counterObj[grado] = 1;
    }

    console.log(`${grado} >>> ${palabra}`);
  }

});

console.log({totalMatches: counter, counterObj});
