/* eslint-disable */

const { compilerOptions } = require("./tsconfig.json");
const { register } = require("tsconfig-paths");

register({
  baseUrl: compilerOptions.outDir,
  paths: compilerOptions.paths,
});
