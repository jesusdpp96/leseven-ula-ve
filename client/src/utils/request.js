const baseHeaders = {
  "Content-Type": "application/json",
  "Accept": "application/json",
  "token": localStorage.token,
};

/**
 * Makes an asynchronous request to a specified URL with optional additional options.
 *
 * @param {string} url - The URL to make the request to.
 * @param {RequestInit} options - Additional options for the request (default is an empty object).
 */
export default async function request(url, options = {}) {
  const response = await fetch(url, {
    method: 'GET',
    ...options,
    headers: {
      ...baseHeaders,
      ...options.headers,
    }
  });

  if (!response.ok) {
    const text = await response.text();
    throw new Error(text);
  }

  return response.json();
}