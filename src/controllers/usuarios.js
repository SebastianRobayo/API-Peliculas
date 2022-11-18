const { handleHttp } = require("../utils/error.handle");

const createUser = (req, res) => {
  try {
    req.getConnection((err, conn) => {
      if (err) return res.send(err);

      conn.query("INSERT INTO usuarios SET ?", [req.body], (err, result) => {
        res.status(!result > 0 ? 400 : 200);
        res.json(
          !result > 0
            ? { error: `Sucedio un error al crear los datos: ${err}` }
            : { message: "Creación exítosa" }
        );
      });
    });
  } catch (error) {
    handleHttp(res, "ERROR_CREATE_USER");
  }
};

module.exports = { createUser };
