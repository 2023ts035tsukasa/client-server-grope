# ============================================================
# latexmk configuration
#
# LATEX_ENGINE=lualatex : LuaLaTeX
# LATEX_ENGINE=uplatex  : upLaTeX + dvipdfmx
#
# 指定がない場合は LuaLaTeX を使用する。
#
# BibTeX処理には upbibtex を使用する。
# latexmk が必要に応じて自動的に実行する。
# ============================================================

my $engine = $ENV{'LATEX_ENGINE'} || 'lualatex';


# ------------------------------------------------------------
# Bibliography
# ------------------------------------------------------------

$bibtex = 'upbibtex %O %B';


# ------------------------------------------------------------
# LuaLaTeX
# ------------------------------------------------------------

if ($engine eq 'lualatex') {

    $pdf_mode = 4;

    $lualatex =
        'lualatex %O -interaction=nonstopmode -halt-on-error %S';

}

# ------------------------------------------------------------
# upLaTeX + dvipdfmx
# ------------------------------------------------------------

elsif ($engine eq 'uplatex') {

    $pdf_mode = 3;

    $latex =
        'uplatex %O -interaction=nonstopmode -halt-on-error %S';

    $dvipdf =
        'dvipdfmx %O -o %D %S';

}

else {

    die "Unknown LATEX_ENGINE: $engine\n";

}
