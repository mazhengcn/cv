# CV — Zheng Ma

LaTeX source for the academic CV of **Zheng Ma**, Tenure-track Associate Professor of Mathematics at Shanghai Jiao Tong University, built on the [Awesome CV](https://github.com/posquit0/Awesome-CV) template.

## Structure

```
cv/
  main.tex            # Main document (personal info, layout)
  pubs.bib            # BibTeX bibliography
  awesome-cv.cls      # Class file
  .latexmkrc          # Symlink to root .latexmkrc
  contents/
    experience.tex    # Academic positions
    education.tex     # Degrees
    publications.tex
    students.tex      # Supervised students
    extracurricular.tex
    honors.tex        # Awards
    presentation.tex
  build/              # Compiled output (gitignored)
```

## Requirements

A full TeX distribution with `lualatex` and `biber`. [TeX Live](https://www.tug.org/texlive/) is recommended.

## Building

From the repo root:

```bash
make
```

Or using `latexmk` directly from the `cv/` directory:

```bash
cd cv
latexmk
```

Both compile `cv/main.tex` with `lualatex` + `biber` and write output to `cv/build/`.

## License

The Awesome CV template is licensed under [CC BY-SA 4.0](https://creativecommons.org/licenses/by-sa/4.0/).  
The CV content is personal and not for reuse without permission.
