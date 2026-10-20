TARGET = main

.PHONY: all lua up clean distclean

# ============================================================
# Default
# ============================================================

# 標準では LuaLaTeX を使用
all: lua


# ============================================================
# Build
# ============================================================

# LuaLaTeX + upBibTeX
lua:
	LATEX_ENGINE=lualatex latexmk -bibtex $(TARGET).tex

# upLaTeX + upBibTeX + dvipdfmx
up:
	LATEX_ENGINE=uplatex latexmk -bibtex $(TARGET).tex


# ============================================================
# Clean
# ============================================================

# PDFを残して中間ファイルを削除
clean:
	latexmk -c $(TARGET).tex
	rm -f $(TARGET).dvi

# PDFを含めて生成物を削除
distclean:
	latexmk -C $(TARGET).tex
	rm -f $(TARGET).dvi
