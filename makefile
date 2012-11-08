x=crypto
latex=pdflatex -file-line-error -halt-on-error $(x).tex
$(x).pdf: $(x).tex
	$(latex) && $(latex)
chrome: $(x).pdf
	google-chrome $(x).pdf
evince: $(x).pdf
	evince $(x).pdf
