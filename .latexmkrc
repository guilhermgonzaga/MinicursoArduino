# SPDX-License-Identifier: CC0-1.0

@default_files = ('[0-9]/[0-9].tex');
$do_cd = 1;
$pdf_mode = 1;  # pdf via pdflatex
$pdflatex = 'pdflatex -synctex=1 -shell-escape -enable-write18 %O %T';
$clean_ext = 'bbl nav out snm vrb';
$warnings_as_errors = 1;
