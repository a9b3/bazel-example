const fs = require("fs");

const args = process.argv.slice(2);

console.log(args);

fs.writeFileSync(args[1], "{}");
