/**
 * generateOwnersJson.js [jsonFiles] --out <outputJsonFile>
 *
 * Args:
 *    [jsonFiles]: List of filepaths to owners JSON files
 *    --out: otuput owners JSON file
 *
 * Owners JSON:
 * {
 *   "<dirname(filepath)>": {
 *     "team": [],
 *   }
 * }
 *
 * Ex:
 *    generateOwnersJson.js foo/bar/owners.json foo/owners.json --out owners.json
 *    {
 *      "foo/bar": { //content of foo/bar/owners.json },
 *      "foo": { // content of foo/owners.json },
 *    }
 */

const path = require("path");
const fs = require("fs");

const jsonFiles = process.argv.slice(2);
const outputJsonFile = process.argv.out;

const combinedResult = {};

jsonFiles.map((jsonFile) => {
  const key = path.dirname(jsonFile);
  const content = require(jsonFile);

  combinedResult[key] = content;
});

fs.writeFileSync(outputJsonFile, combinedResult);
