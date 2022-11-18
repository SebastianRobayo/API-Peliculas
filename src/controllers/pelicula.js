const { handleHttp } = require("../utils/error.handle");
const { pagination } = require("../utils/pagination.handle");

const createMovie = (req, res) => {
  try {
    req.getConnection((err, conn) => {
      if (err) return res.send(err);

      conn.query("INSERT INTO peliculas SET ?", [req.body], (err, result) => {
        res.status(!result > 0 ? 400 : 200);
        res.json(
          !result > 0
            ? { error: `Sucedio un error al crear los datos: ${err}` }
            : { message: "Creación exítosa" }
        );
      });
    });
  } catch (error) {
    handleHttp(res, "ERROR_CREATE_MOVIE");
  }
};

const getMovie = (req, res) => {
  try {
    req.getConnection((err, conn) => {
      if (err) return res.send(err);

      let { titulo, categoria, pagina } = req.params;

      conn.query(
        `SELECT * FROM peliculas WHERE titulo = ? OR categoria = ? ORDER BY fecha_estreno DESC`,
        [titulo, categoria],
        (err, result) => {
          let resultado = pagination(pagina, result);
          res.status(!result > 0 ? 400 : 200);
          res.json(
            !result > 0
              ? { error: `Sucedio un error al cargar los datos: ${err}` }
              : { message: "Busqueda exítosa", resultado }
          );
        }
      );
    });
  } catch (error) {
    handleHttp(res, "ERROR_GET_MOVIE");
  }
};

const getNovedad = (req, res) => {
  try {
    req.getConnection((err, conn) => {
      if (err) return res.send(err);

      conn.query(
        `SELECT * FROM peliculas WHERE fecha_estreno BETWEEN DATE_FORMAT(NOW(), '%Y-%m-01') AND NOW()`,
        (err, result) => {
          res.status(!result > 0 ? 400 : 200);
          res.json(
            !result > 0
              ? { error: `Sucedio un error al cargar los datos: ${err}` }
              : { message: "Novedades", result }
          );
        }
      );
    });
  } catch (error) {
    handleHttp(res, "ERROR_NOVEDAD_MOVIE");
  }
};

const watchMovie = (req, res) => {
  try {
    req.getConnection((err, conn) => {
      if (err) return res.send(err);

      conn.query(
        `UPDATE peliculas SET id = ?`,
        [req.body, req.params.value],
        (err, result) => {
          res.status(!result > 0 ? 400 : 200);
          res.json(
            !result > 0
              ? { error: `Sucedio un error al actualizar los datos: ${err}` }
              : { message: "Pelicula vista", result }
          );
        }
      );
    });
  } catch (error) {
    handleHttp(res, "ERROR_WATCH_MOVIE");
  }
};

module.exports = { createMovie, getMovie, getNovedad, watchMovie };
