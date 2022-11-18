const express = require("express");
const route = express.Router();
const { createUser, getUserMovie } = require("../controllers/usuarios");

route.post("/usuarios/create", createUser);
route.get("/usuarios/peliculas/get", getUserMovie);

module.exports = route;
