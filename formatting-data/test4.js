const fs = require('fs');
const csv = require('csv-parser');

function sanitizeImageName(str) {
  return str
    .trim()
    .toLocaleLowerCase()
    .replace(/ü/g, 'u')
    .replace(/é/g, 'e')
    .replace(/á/g, 'a')
    .replace(/í/g, 'i')
    .replace(/ó/g, 'o')
    .replace(/ú/g, 'u')
    .replace(/ñ/g, 'n')
    .replace(/'/g, '')
    .replace(/\s+/g, '-');
}


function addVideosToJsonFile(filePath, data) {
  let createCount = 0;
  // Read JSON file

  const fileContent = fs.readFileSync(filePath, 'utf8');

  // Parse the JSON data
  let jsonData = JSON.parse(fileContent);

  const newItems = data.map(({palabra, video, tema}) => ({
    grado: "Sexto grado",
    tema,
    palabra,
    image: `/assets/images/${sanitizeImageName(palabra)}.png`,
    video
  }));

  jsonData.push(newItems);

  const outputFilePath = filePath;

  fs.writeFileSync(outputFilePath, JSON.stringify(jsonData, null, 2), 'utf8', (err) => {
    if (err) {
      console.error('Error writing file:', err);
      return;
    }
  });

  return createCount;
}


const csvFilePath = './toadd.csv';

let data = [];

fs.createReadStream(csvFilePath)
  .pipe(csv())
  .on('data', (row) => {
    // Assuming the columns are named 'key' and 'value'
    data.push({
      palabra: row.vocablo,
      video: row.enlace,
      tema: row.tema
    });
  })
  .on('error', (err) => {
    console.error('Error while reading CSV:', err);
  })
  .on('end', () => {
    // Path to the input JSON file
    const paths = [
      './data/sexto-grado.json'
    ];

    let total = paths.reduce((prev, current) =>
      prev + addVideosToJsonFile(current, data), 0);

    console.log(`Created ${total} records`);
  });

