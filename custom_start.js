#!/usr/bin/env node

const ngrok = require("ngrok");

ngrok
  .connect({
    proto: "http",
    addr: "3000",
  })
  .then((url) => {
    console.log(`ngrok tunnel opened at: ${url}`);
    console.log("Open the ngrok dashboard at: https://localhost:4040\n");
  });
