MAIN_FILE = Physique-MPSI.pdf

OUTDIR = PDF

FORMAT = pdf
LATEXMK_OPTIONS = -$(FORMAT)
LATEXMK = latexmk $(LATEXMK_OPTIONS)

LATEXMK_CLEAN = latexmk -c

.PHONY: all clean

all: $(OUTDIR)/$(MAIN_FILE)

$(OUTDIR)/%.pdf : %.tex
	$(LATEXMK) $<
	mv $(@F) $@

clean:
	$(LATEXMK_CLEAN)
