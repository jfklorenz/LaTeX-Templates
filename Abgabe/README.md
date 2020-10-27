# LaTeX-Abgabe

![GitHub top language](https://img.shields.io/github/languages/top/jfklorenz/latex-abgabe) ![GitHub last commit](https://img.shields.io/github/last-commit/jfklorenz/latex-abgabe) ![GitHub issues](https://img.shields.io/github/issues-raw/jfklorenz/latex-abgabe) ![GitHub](https://img.shields.io/github/license/jfklorenz/latex-abgabe)

`abgabe.cls` ist ein **TeX** Template für Abgaben zu universitären Übungsaufgaben im Bereich Informatik und Mathematik.

---

## Installation
Die Klasse muss nicht installiert werden. Einzig die `abgabe.cls` Datei muss sich bei der Erstellung der **.pdf** Datei im selben Ordner wie die **.tex** Datei befinden.

Eine beispielhafte Nutzung ist durch die beiliegende `beispiel.tex` Datei gegeben.

---

## Klassen Optionen
Folgende Parameter können der Klasse übergeben werden:

| Parameter | Bedeutung |
| ------ | ------ |
| name | Der volle Name | 
| mtrnr | Matrikelnummer oder Identifikationsnummer |
| docdate | Datum des Dokuments |
| sub | Unterrichtsfach |
| ex | Übungsnummer |
| mp | Maximalpunktzahl |

---

## Environment / Aufgabe
Die Klasse bietet ein neues Environment `aufgabe` mit folgenden Optionen:

1. Thema der Aufgabe
2. Maximalpunktzahl der Aufgabe

Die Nummerierung erfolgt automatisch.

```tex
\begin{aufgabe}{Thema Aufgabe 1}{Max Punkte Aufgabe 1}
    \lipsum
\end{aufgabe}
```
---

## Packages
Die Klasse bindet folgende Packages ein:

- [x] inputenc [utf8]
- [x] fontenc [T1]
- [x] keyval
- [x] listings
- [x] amsfonts
- [x] amsmath
- [x] bbold
- [x] datetime [yyyymmdd]
- [x] geometry [a4paper, left=25mm, right=15mm, top=25mm, bottom=25mm]
- [x] tabularx
- [x] fancyhdr
- [x] lastpage