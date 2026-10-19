# latexmk -pdf main.tex
$pdf_mode = 1;
$bibtex_use = 2;
$pdflatex = 'pdflatex -interaction=nonstopmode -synctex=1 %O %S';
@default_files = ('main.tex');
$clean_ext = 'synctex.gz bbl run.xml';
