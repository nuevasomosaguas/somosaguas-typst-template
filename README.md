# somosaguas-typst-template

Plantilla de Typst que empaqueta la tipografía Garamond, el estilo inspirado en Edward Tufte y el diseño de notas al margen de Nueva Somosaguas.

## Uso

En el entorno de la Nueva Somosaguas viene instalada como paquete local, con EB Garamond y Fira Code en el sistema: se importa desde cualquier carpeta, sin copiar nada, y `typst init` crea un documento nuevo con ella.

```sh
typst init @local/somosaguas:0.1.0 mi-trabajo
```

```typst
#import "@local/somosaguas:0.1.0": somosaguas, nota
```

Fuera del entorno, se copia `template.typ` junto al documento:

```typst
#import "template.typ": somosaguas, nota

#show: somosaguas.with(
  titulo: [Título],
  subtitulo: [Subtítulo],
  autores: ("Autor",),
  fecha: [septiembre de 2026],
  resumen: [Resumen...],
  columnas: 1, // 1: notas al margen · 2: dos columnas, notas al pie
  fondo: rgb("#fffff8"), // none para imprimir en blanco
)

Texto con una nota al margen.#nota[Aparece en el margen derecho.]
```

Las tipografías EB Garamond y Fira Code (licencia OFL) vienen en `fonts/`, así que se compila con `--font-path fonts`:

```sh
typst compile --font-path fonts ejemplo.typ
typst compile --font-path fonts --input columnas=2 ejemplo.typ ejemplo-dos-columnas.pdf
```
