XELATEX=xelatex -file-line-error -interaction=nonstopmode

.PHONY: all
all: main.tex
	latexmk -pdf -pdflatex="$(XELATEX)" -use-make main.tex

.PHONY: auto
auto: main.tex
	latexmk -pdf -pdflatex="$(XELATEX)" -use-make -pvc main.tex

.PHONY: clean
clean:
	rm -f main.aux *.bbl *bcf *.blg *.log *.out *.tdo *.toc *.xdv *.synctex.gz *.fdb_latexmk *.fls *.run.xml; \
	rm -f **/*.aux

.PHONY: read
read:
	setsid zathura main.pdf &
