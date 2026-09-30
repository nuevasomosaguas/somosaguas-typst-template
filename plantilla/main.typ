#import "@local/somosaguas:0.1.0": somosaguas, nota

#show: somosaguas.with(
  titulo: [Título],
  subtitulo: [Subtítulo],
  autores: ("Nombre Apellido",),
  fecha: datetime.today().display("[day]/[month]/[year]"),
  resumen: [El resumen, en unas líneas.],
  columnas: 1, // 1: notas al margen · 2: dos columnas, notas al pie
)

= Introducción

El texto, con una nota al margen.#nota[Aparece en el margen derecho.]

// Para citar con @clave: «bibcongelar main.typ» escribe referencias.bib con las
// entradas citadas, y esta línea, sin las barras, pone la lista al final.
// #bibliography("referencias.bib", title: [Referencias], style: "chicago-author-date")
