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
  user: "b4f5c051c1fd7c",
  password: "2b6004ba",
  database: "heroku_2952441516f413b",
};

app.use(conn(mysql, dbConfig, "single"));
app.use(express.json());
app.use("/", routeUser, routeMovie);

app.listen(PORT, () => {
  console.log(`🚀 server running on port ${PORT}`);
});
