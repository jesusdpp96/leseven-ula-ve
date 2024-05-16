export function getFilterQueryParams(grado, range) {
  let route = '';

  if (typeof grado === 'number' && !range) {
    route = `${route}?grado=${grado}`;
  } else if (typeof grado !== 'number' && range) {
    route = `${route}?start=${range.start}&end=${range.end}`;
  } else if (typeof grado === 'number' && range) {
    route = `${route}?grado=${grado}&start=${range.start}&end=${range.end}`;
  }
  return route;
}