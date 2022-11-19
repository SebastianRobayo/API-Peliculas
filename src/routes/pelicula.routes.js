const express = require("express");
const route = express.Router();
const {
  createMovie,
  getMovie,
  getNovedad,
  watchMovie,
} = require("../controllers/pelicula");

route.get(
  "/peliculas/get/:titulo/:tituloValue/:categoria/:categoriaValue/:pagina",
  getMovie
);
route.get("/peliculas/novedades/get", getNovedad);
route.post("/peliculas/create", createMovie);
route.post("/peliculas/watch/create/:pelicula/:usuario", watchMovie);

module.exports = route;
