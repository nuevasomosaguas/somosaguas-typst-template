// typst compile --font-path fonts ejemplo.typ
// typst compile --font-path fonts --input columnas=2 ejemplo.typ ejemplo-dos-columnas.pdf
#import "template.typ": somosaguas, nota

#show: somosaguas.with(
  titulo: [La ciencia social fundada en la realidad],
  subtitulo: [Facultad libre de ciencias sociales analíticas y cuantitativas],
  autores: ("Nueva Somosaguas",),
  fecha: datetime.today().display("[day]/[month]/[year]"),
  resumen: [Durante décadas, la academia dominante abjuró del método formal para dividirse entre la exégesis doctrinaria y el ajuste estadístico ciego. La Nueva Somosaguas recupera el estudio del hombre y la sociedad mediante la integración rigurosa de las matemáticas, la demografía formal, la genética cuantitativa, la sociología analítica y la computación reproducible.],
  columnas: int(sys.inputs.at("columnas", default: "1")),
)

= El fin de la especulación de salón

La *Nueva Somosaguas* no es un ajuste cosmético ni una reforma académica de compromiso. Es una sociología que sustituye el arbitrio discursivo por las matemáticas y el contraste empírico de la biología.#nota[Sobre la unidad del conocimiento, véase E. O. Wilson, _Consilience_ (1998).]

Frente a la tradición que redujo la sociología a una exégesis verbal de textos sagrados, nuestra facultad exige la *disciplina intelectual del dato*, la inferencia causal por diseño y la verificación formal. Los materiales se escriben en #link("https://quarto.org")[Quarto] y se compilan con `typst compile`.

== Cimientos formales e inferencia rigurosa

El primer pilar son las herramientas formales: probabilidad, álgebra lineal y programación. Sin ellas, la teoría social se queda en metáfora.#nota[Blitzstein y Hwang, _Introduction to Probability_; Strang, _Introduction to Linear Algebra_.] La esperanza de una variable aleatoria discreta es

$ EE[X] = sum_(x) x dot P(X = x). $

#quote(block: true)[El análisis sociológico consiste en explicar los fenómenos sociales mediante los mecanismos que los producen.]

=== Un ejemplo reproducible

```r
modelo <- lm(ingresos ~ educacion + edad, data = encuesta)
summary(modelo)
```

#figure(
  table(
    columns: 3,
    [Pilar], [Referencia], [Herramienta],
    [Herramientas formales], [Blitzstein], [R, Julia],
    [Naturaleza humana], [Plomin], [Puntuaciones poligénicas],
    [Interacción estratégica], [Pearl], [Grafos causales],
    [Síntesis generativa], [Epstein], [Modelos de agentes],
  ),
  caption: [Los cuatro pilares de la consiliencia.],
)

#lorem(180)
