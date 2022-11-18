const express = require("express");
const route = express.Router();
const {
  createMovie,
  getMovie,
  getNovedad,
  watchMovie,
} = require("../controllers/pelicula");

route.get("/peliculas/get/:titulo/:categoria/:pagina", getMovie);
route.get("/peliculas/novedades/get", getNovedad);
route.post("/peliculas/create", createMovie);
route.put("/peliculas/watch/update/:value", watchMovie);

module.exports = route;
