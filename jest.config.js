/** @type {import('jest').Config} */
const config = {
  roots: ['<rootDir>/tests'],
  globalSetup: '<rootDir>/tests/setup.js',
  globalTeardown: '<rootDir>/tests/teardown.js',
};

module.exports = config;