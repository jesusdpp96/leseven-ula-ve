/**
 * Capitalizes the first letter of each word in a given string.
 *
 * @param {string} str - The input string to be capitalized.
 * @return {string} The capitalized string.
 */
export function capitalizeWords(str) {
  return str.replace(/\b\w/g, function (char) {
    return char.toUpperCase();
  });
}