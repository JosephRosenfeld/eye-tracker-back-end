import express from "express";
import dotenv from "dotenv";

dotenv.config();
const app = express();

app.get("/", (req, res) => {
  res.send("<h1>Hello There</h1>");
});

app.get("/products", (req, res) => {
  res.send([
    {
      product_id: 1,
      price: "$10",
    },
    {
      product_id: 2,
      price: "$40",
    },
  ]);
});

const PORT = process.env.PORT || 5000;

app.listen(PORT, () => console.log(`Server running on ${PORT}`));
