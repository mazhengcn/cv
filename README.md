# Academic Documents — Zheng Ma

LaTeX sources for the academic documents of **Zheng Ma**, Tenure-track Associate Professor of Mathematics at Shanghai Jiao Tong University.

## Documents

| Document | Source | Output |
|---|---|---|
| Curriculum Vitae | `cv/` | `output/cv.pdf` |
| Research Statement | `research-statement/` | `output/research-statement.pdf` |
| Teaching Statement | `teaching-statement/` | `teaching-statement/output/` |

## Structure

```
cv/
  main.tex              # Main document (personal info, layout)
  publications.bib      # BibTeX bibliography
  awesome-cv.cls        # Class file (Awesome CV template)
  .latexmkrc
  contents/
    experience.tex      # Academic positions
    education.tex       # Degrees
    publications.tex
    students.tex        # Supervised students
    committees.tex      # Service & committees
    extracurricular.tex
    honors.tex          # Awards
    presentation.tex

research-statement/
  main.tex
  references.bib
  .latexmkrc
  contents/
    introduction.tex
    kinetic.tex
    spectral.tex
    inverse.tex
    deep-learning.tex
    future.tex
    conclusion.tex

teaching-statement/
  main.tex
  .latexmkrc

output/                 # Compiled PDFs (gitignored)
```

## Requirements

A full TeX distribution with `lualatex` and `biber`. [TeX Live](https://www.tug.org/texlive/) is recommended.

## Building

Build all documents from the repo root:

```bash
make
```

Build individual documents:

```bash
make output/cv.pdf
make output/research-statement.pdf
```

Or run `latexmk` directly from a document directory:

```bash
cd cv && latexmk
```

Compiled PDFs are written to `output/`.

## Clean

```bash
make clean
```

## License

The CV is built on the [Awesome CV](https://github.com/posquit0/Awesome-CV) template, licensed under [CC BY-SA 4.0](https://creativecommons.org/licenses/by-sa/4.0/).
The document content is personal and not for reuse without permission.
