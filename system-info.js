const os = require("os");

console.log("Operating System:", os.platform());
console.log("Node Version:", process.version);
console.log("CPU Architecture:", os.arch());
console.log("Total Memory (GB):", (os.totalmem() / (1024 ** 3)).toFixed(2));
