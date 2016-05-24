.SUFFIXES: .md .html .tex .pdf

PANDOC_OTPIONS=--standalone --smart
HTML_OPTIONS=--template template.html \
			 --include-before-body=navbar.html \
			 --base-header-level=3
PDF_OPTIONS=--template template.tex --latex-engine=lualatex
TEX_OPTIONS=--template template.tex

metadata: metadata.yaml
	@perl metadata

reports.make: metadata

.md.html: metadata template.html
	@echo $@
	@pandoc $(PANDOC_OPTIONS) -t html5 $(HTML_OPTIONS) -M source:$< \
		--bibliography $(dir $<)bibliography.bib \
		$(dir $<)metadata.yaml $< | sed 's/^<table/<table class="table"/' > $@

.md.pdf: metadata template.tex
	@echo $@
	@pandoc $(PANDOC_OPTIONS) $(PDF_OPTIONS) -M source:$< \
		--bibliography $(dir $<)bibliography.bib \
		$(dir $<)metadata.yaml texoptions.yaml $< -o $@

.md.tex: metadata template.tex
	@echo $@
	@pandoc $(PANDOC_OPTIONS) $(PDF_OPTIONS) -M source:$< \
		--bibliography $(dir $<)bibliography.bib \
		$(dir $<)metadata.yaml texoptions.yaml $< -o $@

# include if reports.make exists
-include reports.make
