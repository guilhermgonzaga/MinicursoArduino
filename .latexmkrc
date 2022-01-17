# SPDX-License-Identifier: CC0-1.0

@default_files = ('[0-9]/[0-9].tex');
$clean_ext = 'bbl fls log nav out out.pyg pygstyle pygtex snm vrb _minted-%R/* _minted-%R';
$do_cd = 1;
$pdf_mode = 1;  # 1 = pdflatex; 4 = lualatex; 5 = xelatex
$silent = $ENV{'CI'} ? 0 : 1;  # Silent if not running in CI
$warnings_as_errors = 1;

set_tex_cmds('-synctex=1 -shell-escape -enable-write18 %O %T');
