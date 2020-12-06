@default_files = ('?/?.tex');
$do_cd = 1;
$pdf_mode = 1;  # tex -> pdf
$pdflatex = 'pdflatex -synctex=1 -shell-escape -enable-write18 %O %T';
$clean_ext = 'bbl nav out snm vrb';
$warnings_as_errors = 1;
