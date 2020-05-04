
# LaTeX Makefile
INPUTFILE=text
OUTPUTFILE=Star\ Vectors

all: $(INPUTFILE).pdf

.PHONY: clean

clean:
	rm -rf *.blg
	rm -rf *.out
	rm -rf *.bbl
	rm -rf *.log
	rm -rf *.ind
	rm -rf *.ilg
	rm -rf *.lot
	rm -rf *.lof
	rm -rf *.ind
	rm -rf *.idx
	rm -rf *.aux
	rm -rf *.toc
	rm -rf *.pdf

$(INPUTFILE).pdf: *.tex
	rm -rf *.pdf
	pdflatex -shell-escape $(INPUTFILE).tex
	pdflatex -shell-escape $(INPUTFILE).tex
	gs -sDEVICE=pdfwrite -dCompatibilityLevel=1.4  -dPrinted=false -dPDFSETTINGS=/prepress -dNOPAUSE -dQUIET -dBATCH -sOutputFile=$(OUTPUTFILE).pdf $(INPUTFILE).pdf
	rm -rf *.blg
	rm -rf *.out
	rm -rf *.bbl
	rm -rf *.log
	rm -rf *.ind
	rm -rf *.ilg
	rm -rf *.lot
	rm -rf *.lof
	rm -rf *.ind
	rm -rf *.idx
	rm -rf *.aux
	rm -rf *.toc
	rm -rf *.nav
	rm -rf *.snm
	rm -f ${INPUTFILE}.pdf
