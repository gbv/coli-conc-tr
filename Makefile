.SUFFIXES: .md .html .pdf

PANDOC_OTPIONS=--standalone --smart
HTML_OPTIONS=--template template.html \
			 --include-before-body=navbar.html \
			 --base-header-level=3
PDF_OPTIONS=--template template.tex --latex-engine=lualatex

metadata: metadata.yaml
	perl metadata $<

.md.html: metadata
	pandoc $(PANDOC_OPTIONS) -t html5 $(HTML_OPTIONS) -M source:$< \
		--bibliography $(dir $<)bibliography.bib \
		$(dir $<)metadata.yaml $< | sed 's/^<table/<table class="table"/' > $@

.md.pdf: metadata
	pandoc $(PANDOC_OPTIONS) $(PDF_OPTIONS) -M source:$< \
		--bibliography $(dir $<)bibliography.bib \
		$(dir $<)metadata.yaml texoptions.yaml $< -o $@

