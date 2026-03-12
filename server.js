const { spawn } = require("child_process");

const processStart = spawn(
  "node",
  ["node_modules/@strapi/strapi/bin/strapi.js", "start"],
  { stdio: "inherit" }
);

processStart.on("close", (code) => {
  process.exit(code);
});