.SUFFIXES: .md .html

PANDOC_OTPIONS=--standalone --smart
HTML_OPTIONS=--template template.html \
			 --include-before-body=navbar.html \
			 --base-header-level=3

metadata: metadata.yaml
	perl metadata $<

.md.html: metadata
	pandoc $(PANDOC_OPTIONS) -t html5 $(HTML_OPTIONS) -M source:$< \
		$(dir $<)metadata.yaml $< | sed 's/^<table/<table class="table"/' > $@
