SRCDIR   := OpenFonts
SRC      := kyle_kavanagh_cv-openfont.xtx
PDF      := $(SRC:.xtx=.pdf)
LATEX    := xelatex
LATEXFLAGS := -interaction=nonstopmode

.PHONY: all clean

all: $(SRCDIR)/$(PDF)

$(SRCDIR)/$(PDF): $(SRCDIR)/$(SRC) $(SRCDIR)/deedy-resume-openfont.cls
	cd $(SRCDIR) && $(LATEX) $(LATEXFLAGS) $(SRC)

clean:
	cd $(SRCDIR) && rm -f *.aux *.log *.out *.fls *.fdb_latexmk *.synctex.gz
