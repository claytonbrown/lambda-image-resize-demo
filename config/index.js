var fs = require('fs');
var path = require('path');
var configPath = path.resolve(__dirname, "config.json");
module.exports = JSON.parse(fs.readFileSync(configPath, { encoding: "utf8" }));
