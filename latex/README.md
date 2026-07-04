# LaTeX-Fassung der Bachelorarbeit

`main.tex` ist das zentrale Dokument. Die Inhalte liegen kapitelweise in
`kapitel/` und werden beim Kompilieren zu einer PDF zusammengesetzt.
Layout und Satz basieren unmittelbar auf `fumi.cls` aus der erhaltenen
Vorlage.

`references.bib` verweist auf die gemeinsame Literaturdatenbank im
Projektstamm. Dadurch verwenden LaTeX-Arbeit und Quarto-Lernressource
dieselben Quellen.

PDF erzeugen:

```sh
latexmk main.tex
```

Die fertige Datei wird unter `../output/pdf/main.pdf` abgelegt.

## Vorschau beim Bearbeiten einzelner Kapitel

Alle eingebundenen `.tex`-Dateien verweisen über einen TeX-Root-Hinweis
auf `main.tex`. Mit der VS-Code-Erweiterung LaTeX Workshop wird deshalb
auch beim Speichern einer Kapiteldatei immer die vollständige Arbeit
gebaut. Die PDF-Vorschau kann im LaTeX-Workshop-Menü über **View LaTeX
PDF** geöffnet werden.

Hilfsdateien entfernen:

```sh
latexmk -c main.tex
```
