# LaTeX-Bachelorarbeit

![GitHub top language](https://img.shields.io/github/languages/top/jfklorenz/latex-bachelorarbeit) ![GitHub last commit](https://img.shields.io/github/last-commit/jfklorenz/latex-bachelorarbeit) ![GitHub issues](https://img.shields.io/github/issues-raw/jfklorenz/latex-bachelorarbeit) ![GitHub](https://img.shields.io/github/license/jfklorenz/latex-bachelorarbeit)

Ein **LaTeX** Template für universitäre Abschlussarbeiten, wie zum Beispiel Bachelor- und Master-Arbeiten.

Das Template kann des weiteren auch für Bücher sowie Dokumentationen.

---

## Struktur
Das Projekt ist wie folgt strukturiert:

Ordner | Inhalt
------ | ------
bib | Das Literaturverzeichnis
form | Packages, Definitionen, Layout, etc
pages | Einzelne Abschnitte der Arbeit

Das Dokument `thesis.tex` wird final kompiliert.

Weitere *.tex* Dokumente können mit `\input{pages/file}` eingefügt und bei Bedarf einzeln auskommentiert werden.