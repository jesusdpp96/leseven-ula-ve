/**
 * Returns the date in the format YYYY-MM-DD.
 *
 * @param {Date} date - the input date
 * @return {string} the formatted date string
 */
export function getDateYYYYMMDD(date) {
  const year = `${date.getFullYear()}`;
  let month = `${date.getMonth() + 1}`;
  month = month.length === 1 ? `0${month}` : month;

  let day = `${date.getDate()}`;
  day = day.length === 1 ? `0${day}` : day;
  const fecha = `${year}-${month}-${day}`;

  return fecha;
}

/**
 * Returns the date in the format DD/MM/YYYY.
 *
 * @param {Date} date - the input date
 * @return {string} the formatted date string
 */
export function getDateDDMMYYYY(date) {
  const year = `${date.getFullYear()}`;
  let month = `${date.getMonth() + 1}`;
  month = month.length === 1 ? `0${month}` : month;

  let day = `${date.getDate()}`;
  day = day.length === 1 ? `0${day}` : day;
  const fecha = `${day}/${month}/${year}`;

  return fecha;
}