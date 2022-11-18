require("dotenv").config();
const express = require("express");
const mysql = require("mysql2");
const conn = require("express-myconnection");
const routeUser = require("./routes/usuarios.routes");
const routeMovie = require("./routes/pelicula.routes");

const app = express();
const PORT = process.env.PORT || 5051;
const dbConfig = {
  host: process.env.DB_HOST || "localhost",
  user: process.env.DB_USER || "baq",
  password: process.env.DB_PASSWORD || "Asiste.2021",
  database: process.env.DB_NAME || "peliculas",
};

app.use(conn(mysql, dbConfig, "single"));
app.use(express.json());
app.use("/", routeUser, routeMovie);

app.listen(PORT, () => {
  console.log(`🚀 server running on port ${PORT}`);
});
