const express = require("express");
const route = express.Router();
const { createUser } = require("../controllers/usuarios");

route.post("/usuarios/create", createUser);

module.exports = route;
