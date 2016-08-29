MAIN_FILE = Physique-MPSI.pdf

OUTDIR = PDF

FORMAT = pdf
LATEXMK_OPTIONS = -$(FORMAT)
LATEXMK = latexmk $(LATEXMK_OPTIONS)

all: $(OUTDIR)/$(MAIN_FILE)

$(OUTDIR)/%.pdf : %.tex
	$(LATEXMK) $<
