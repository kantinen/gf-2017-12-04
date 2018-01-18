# Kantinen's Generalforsamling den 4. december 2017

En PDF-udgave af referatet er tilgængelig
[her](https://kantinen.github.io/gf-2017-12-04/referat.pdf). Den har
følgende SHA256 sum:

    8c5fc4dfcb9b8ce416d14f598eb21ce5e72da55f7086beaa8fde2d0fb2dfdba2

Vedtægterne lever nu på vores GitHub:
https://github.com/kantinen/vedtaegter

Der er så en række haleanmodninger som skal vedtages til
generalforsamlingen. Her foreligger også en [oversigt over
haleanmodningerne, i ønsket vedtagelses- og
halingsrækkefølge](https://kantinen.github.io/gf-2017-12-04/vedtaegter-haleanmodninger.svg).

Denne oversigt er genereret vha. graphviz, hvor [deploy.sh](deploy.sh)
er blevet brugt til at lægge den op i SVG format op på GitHub Pages.

## Oversigt over kildeteksten

De vigtigste kildetekst er i [`referat.tex`](referat.tex) og
[`vedtaegter-haleanmodninger.dot`](vedtaegter-haleanmodninger.dot),
som er hhv. referatet fra generalforsamlingen, og oversigten over
haleanmodninger til
[vedtægterne](https://github.com/kantinen/vedtaegter), som blev
vedtaget ved generalforsamlingen.

Ellers er der også:

* [`Makefile`](Makefile) kan bruges til at bygge både referatet og
  diagrammet over haleanmodninger til vedtægterne.

* [`latexrun`](latexrun) anbefales (og bruges af
  [`Makefile`](Makefile)) til at oversætte
  [`referat.tex`](referat.tex). [`latexrun`](latexrun) er en
  grænseflade til den gængse `pdflatex`, som rydder op i beskederne
  fra `pdflatex`, så typesætningfejl faktisk er til at opdage med
  øjnene.
* [`deploy.sh`](deploy.sh) bruges til at lægge den færdige diagram
  over vedtægtsændringer op på
[kantinen.github.io/gf-2017-12-04](https://kantinen.github.io/gf-2017-12-04/)
* [`gitsync.sh`](gitsync.sh) bruges af [`deploy.sh`](deploy.sh) til at
  sikre at der ikke lægges noget op som ikke er blevet forpligtiget
  til Git, og lagt op på GitHub.
