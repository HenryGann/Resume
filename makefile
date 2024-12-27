# Generate your PDF
%.pdf : %.tex
	@echo '.........: Building $<'
	xelatex $<

# Clean temp files
clean:
	rm -f errors_pdflatex1.err errors_bibtex.err errors_pdflatex2.err
	rm -f *.aux *.bbl *.blg *.log *.out
	rm -f *.synctex.gz
	@echo 'Cleaned up intermediate files.'
