const pagination = (pagina, resultado) => {
  let page = pagina;
  let perPage = 5;
  let totalItems = resultado.length;
  let totalPages = Math.round(resultado.length / perPage);

  let arrToShow = resultado.slice(
    page > 1 ? perPage * (page - 1) : 0,
    perPage * page
  );

  let resultadoFinal = arrToShow.concat(
    `Peliculas: ${totalItems}`,
    `Paginas: ${totalPages}`,
    `Pagina actual: ${page}`
  );
  return resultadoFinal;
};

module.exports = { pagination };
