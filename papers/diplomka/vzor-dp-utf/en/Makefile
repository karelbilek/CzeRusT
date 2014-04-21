all: thesis.pdf


# LaTeX je potreba spustit dvakrat, aby spravne spocital odkazy
thesis.pdf: thesis.tex $(wildcard *.tex)
	xelatex $<
	xelatex $<
	bibtex8 thesis
	xelatex $<
	xelatex $<

clean:
	rm -f *.blg *.log *.dvi *.aux *.toc *.lof *.out thesis.ps thesis.pdf thesis.bbl thesis-blx.bib *.run.xml *.bcd
