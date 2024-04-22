const fs = require('fs');
const csv = require('csv-parser');

function sanitizeStr(str) {
  return str
    .trim()
    .toLocaleLowerCase()
    .replace(/\..+/, '')
    .replace(/ü/g, 'u')
    .replace(/é/g, 'e')
    .replace(/á/g, 'a')
    .replace(/í/g, 'i')
    .replace(/ó/g, 'o')
    .replace(/ú/g, 'u')
    .replace(/ñ/g, 'n')
    .replace(/\s+/g, '-');
}


let used = {};


function updateVideoUrlsOnFile(filePath, dataObject) {
  let updateCount = 0;
  // Read JSON file

  const fileContent = fs.readFileSync(filePath, 'utf8');


  // Parse the JSON data
  let jsonData = JSON.parse(fileContent);

  // Modify entries with empty video attributes
  jsonData = jsonData.map(item => {
    if (item.video === '') {

      if (dataObject[item.palabra]) {
        item.video = dataObject[item.palabra];
        if (used[item.palabra] === false)
          used[item.palabra] = true;
        updateCount += 1;
      }

    }
    return item;
  });


  // Path to the output JSON file
  // const outputFilePath = filePath;

  // Save the modified JSON data to a new file, pretty-printed
  // fs.writeFileSync(outputFilePath, JSON.stringify(jsonData, null, 2), 'utf8', (err) => {
  //   if (err) {
  //     console.error('Error writing file:', err);
  //     return;
  //   }
  // });


  return updateCount;
}


const csvFilePath = './missing2.csv';

let dataObject = {};

fs.createReadStream(csvFilePath)
  .pipe(csv())
  .on('data', (row) => {
    // Assuming the columns are named 'key' and 'value'
    dataObject[row.vocablo] = row.enlace;
    used[row.vocablo] = false;
  })
  .on('end', () => {
    // Path to the input JSON file
    const paths = [
      './data/grados.json',
      './data/temas.json',
      './data/pruebas-preescolar.json',
      './data/pruebas-primer-grado.json',
      './data/pruebas-segundo-grado.json',
      './data/pruebas-tercer-grado.json',
      './data/pruebas-cuarto-grado.json',
      './data/pruebas-quinto-grado.json',
      './data/pruebas-sexto-grado.json',
      './data/preescolar.json',
      './data/primer-grado.json',
      './data/segundo-grado.json',
      './data/tercer-grado.json',
      './data/cuarto-grado.json',
      './data/quinto-grado.json',
      './data/sexto-grado.json'
    ];

    let total = 0;

    for (const path of paths) {
      total += updateVideoUrlsOnFile(path, dataObject);
    }

    Object.entries(used).filter(([, value]) => !value).forEach(([key]) => {
      console.log(`${key}, ${dataObject[key]}`);
    })

    // console.log(`Updated ${total} records`);

  })
  .on('error', (err) => {
    console.error('Error while reading CSV:', err);
  });

