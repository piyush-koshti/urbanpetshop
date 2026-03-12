const { spawn } = require("child_process");

const child = spawn(
  "node",
  ["./node_modules/@strapi/strapi/bin/strapi.js", "start"],
  { stdio: "inherit" }
);

child.on("close", (code) => {
  process.exit(code);
});