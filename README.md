This git repository contains document sources of technical reports of [project coli-conc](https://coli-conc.gbv.de/) in Pandoc Markdown syntax.

Each report is located in a subdirectory with name `trX` where `X` is the
report number. Each subdirectory 

To finished reports are listed in file `metadata.yaml` together with their metadata (title, number, authors, DOI...).

Conversion to HTML and to PDF requires Pandoc and LuaTeX. To execute conversion call the `Makefile` via `make`:

    make
    make tr1
    make all
    make tr1/tr1.pdf
    make tr2/tr2.pdf

