require("dotenv").config();
const express = require("express");
const mysql = require("mysql2");
const conn = require("express-myconnection");
const routeUser = require("./routes/usuarios.routes");
const routeMovie = require("./routes/pelicula.routes");

const app = express();
const PORT = process.env.PORT || 5051;
const dbConfig = {
  host: "us-cdbr-east-06.cleardb.net",
  user: "b7f302e4dc63ac",
  password: "3f1179d7",
  database: "heroku_dee44bcbec6623f",
};

app.use(conn(mysql, dbConfig, "pool"));
app.use(express.json());
app.use("/", routeUser, routeMovie);

app.listen(PORT, () => {
  console.log(`🚀 server running on port ${PORT}`);
});
