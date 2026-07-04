# Bachelorarbeit: Adaptive Lernverfahren

Der Projektordner ist nach Verwendungszweck gegliedert:

- `latex/`: schriftliche Bachelorarbeit
- `quarto/`: interaktive Lernressource
- `vorlagen/`: unveränderte Ausgangsvorlage des Betreuers
- `quellen/`: wissenschaftliche Ausgangsliteratur
- `output/`: erzeugte Abgaben
- `references.bib`: gemeinsame Literaturdatenbank für LaTeX und Quarto

## Schriftliche Arbeit als PDF

Aus dem Projektstamm:

```sh
cd latex
latexmk main.tex
```

Ausgabe: `output/pdf/main.pdf`

## Interaktive Lernressource als HTML

Aus dem Projektstamm:

```sh
quarto render quarto
```

Ausgabe: `output/html/umsetzung.html`
