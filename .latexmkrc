$pdf_mode = 4;          # lualatex
$lualatex = 'lualatex -interaction=nonstopmode -synctex=1 %O %S';
$bibtex_use = 2;        # use biber
$biber = 'biber %O %S';

# Output to build/ (relative to the directory latexmk is run from)
$aux_dir = 'build';
@default_files = ('main.tex');
