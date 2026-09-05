all: tesina-sig-criminalidad-patrullaje.pdf

tesina-sig-criminalidad-patrullaje.pdf: tesina-sig-criminalidad-patrullaje.tex referencias.bib cap3.tex cap5_anexos.tex
	pdflatex -interaction=nonstopmode tesina-sig-criminalidad-patrullaje.tex
	bibtex tesina-sig-criminalidad-patrullaje.aux
	pdflatex -interaction=nonstopmode tesina-sig-criminalidad-patrullaje.tex
	pdflatex -interaction=nonstopmode tesina-sig-criminalidad-patrullaje.tex
	@echo "PDF generado: tesina-sig-criminalidad-patrullaje.pdf"

clean:
	rm -f tesina-sig-criminalidad-patrullaje.aux tesina-sig-criminalidad-patrullaje.bbl tesina-sig-criminalidad-patrullaje.blg tesina-sig-criminalidad-patrullaje.log tesina-sig-criminalidad-patrullaje.out tesina-sig-criminalidad-patrullaje.toc tesina-sig-criminalidad-patrullaje.lot tesina-sig-criminalidad-patrullaje.lof tesina-sig-criminalidad-patrullaje.pdf
