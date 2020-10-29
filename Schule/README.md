# LaTeX-Nachhilfe

![GitHub status](https://img.shields.io/badge/status-release-success) ![GitHub top language](https://img.shields.io/github/languages/top/jfklorenz/latex-nachhilfe) ![GitHub last commit](https://img.shields.io/github/last-commit/jfklorenz/latex-nachhilfe) ![GitHub issues](https://img.shields.io/github/issues-raw/jfklorenz/latex-nachhilfe) ![GitHub](https://img.shields.io/github/license/jfklorenz/latex-nachhilfe)

`nachhilfe.cls` ist eine **TeX** Template Klasse zur Erstellung von Dokumenten für Nachhilfeunterricht und universitäre Tutorienleitungen.

---

## Installation
Die Klasse muss nicht installiert werden. Einzig die `nachhilfe.cls` Datei muss sich bei der Erstellung der **.pdf** Datei im selben Ordner wie die **.tex** Datei befinden.

Eine beispielhafte Nutzung ist durch die beiliegende `beispiel.tex` Datei gegeben.

---

## Klassen Optionen
Folgende Parameter können der Klasse übergeben werden:

Parameter | Bedeutung
--- | ---
tutor | Name des Tutors
docdate | Datum des Dokuments
fach | Unterrichtsfach
thema | Thema der Nachhilfe

---

## Environment / Aufgabe
Die Klasse bietet ein neues Environment `aufgabe`, der das Thema der Aufgabe übergeben werden kann.

Die Nummerierung erfolgt automatisch.

```tex
\begin{aufgabe}{Thema Aufgabe 1}
    \lipsum
\end{aufgabe}
```
