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

      let { titulo, categoria, tituloValue, categoriaValue, pagina } =
        req.params;

      conn.query(
        `SELECT * FROM peliculas WHERE ${titulo} = ? AND ${categoria} = ? ORDER BY fecha_estreno DESC`,
        [tituloValue, categoriaValue],
        (err, result) => {
          let resultado = pagination(pagina, result);
          res.status(!result.length > 0 ? 400 : 200);
          res.json(
            !result.length > 0
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
        `SELECT * FROM peliculas WHERE fecha_estreno <= NOW() AND fecha_estreno >= date_add(NOW(), INTERVAL -21 DAY) ORDER BY fecha_estreno DESC`,
        (err, result) => {
          res.status(!result.length > 0 ? 400 : 200);
          res.json(
            !result.length > 0
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

      let { pelicula, usuario } = req.params;

      conn.query(
        `INSERT INTO peliculas_usuario (usuarios, peliculas) SELECT username, titulo FROM peliculas p INNER JOIN usuarios u WHERE p.id = ? AND u.id = ?`,
        [pelicula, usuario],
        (err, result) => {
          res.status(!result > 0 ? 400 : 200);
          res.json(
            !result > 0
              ? { error: `Sucedio un error al actualizar los datos: ${err}` }
              : { message: "Pelicula vista" }
          );
        }
      );
    });
  } catch (error) {
    handleHttp(res, "ERROR_WATCH_MOVIE");
  }
};

module.exports = { createMovie, getMovie, getNovedad, watchMovie };
