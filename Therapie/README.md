# LaTeX-Therapie

![GitHub status](https://img.shields.io/badge/status-release-success) ![GitHub top language](https://img.shields.io/github/languages/top/jfklorenz/latex-therapie) ![GitHub last commit](https://img.shields.io/github/last-commit/jfklorenz/latex-therapie) ![GitHub issues](https://img.shields.io/github/issues-raw/jfklorenz/latex-therapie) ![GitHub](https://img.shields.io/github/license/jfklorenz/latex-therapie)

Eine **LaTeX** Template Klasse für die Aufzeichnungen einer Therapie-Sitzung.

Das Template ist aufgeteilt in **Einleitung**, die **Sitzung** sowie die **Nachbereitung**.

Die **Sitzung** selbst ist wiederum aufgeteilt in variable, für die Sitzung relevanten Zeitintervalle.

Das Dokument `beispiel.tex` zeigt eine beispielhafte Nutzung der Klasse.

---

## Klasse
Die **therapy.cls** Datei muss sich zum Zeitpunkt des Kompilierens im selben Ordner befinden wie das zu kompilierende **.tex.** Dokument.

#### Parameter
Folgende Parameter können der Klasse übergeben werden:

- [x] autor: Name des Autors
- [x] datum: Datum der Sitzung, per Default das Datum der letzten Kompilierung
- [x] thema: Thema der Sitzung
- [x] nummer: Anzahl der Sitzung

Aus diesem Parametern wird die Überschrift generiert.

---

## Environment

```latex
\begin{abschnitt}{
    % t + X
}{
    % Session Zeitpunkt
}{
    % Zustand / Stimmung
}{
    % Uhrzeit    
}
```

---

## Commands
```latex
\ueberschrift{} % Text der Überschrift, z.B. Vorwort, etc
```

```latex
\linie % Erzeugt eine horizontale Linie nach einer Überschrift
```