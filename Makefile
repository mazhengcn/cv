.PHONY: all clean

DOCS   = cv research-statement teaching-statement
PDFS   = $(patsubst %, $(OUTPUT_DIR)/%.pdf, $(DOCS))

CV_CONTENTS_DIR = cv/contents
CV_SRCS         = $(shell find $(CV_CONTENTS_DIR) -name '*.tex')

RS_CONTENTS_DIR = research-statement/contents
RS_SRCS         = $(shell find $(RS_CONTENTS_DIR) -name '*.tex')

OUTPUT_DIR = dist

all: $(PDFS)

# Pattern rule — $* is the stem (doc directory name)
$(OUTPUT_DIR)/%.pdf:
	mkdir -p $(OUTPUT_DIR)
	cd $* && latexmk
	cp $*/main.pdf $@

# Per-document dependencies
$(OUTPUT_DIR)/cv.pdf:                  cv/main.tex $(CV_SRCS) cv/publications.bib
$(OUTPUT_DIR)/research-statement.pdf:  research-statement/main.tex $(RS_SRCS) research-statement/references.bib
$(OUTPUT_DIR)/teaching-statement.pdf:  teaching-statement/main.tex

clean:
	for d in $(DOCS); do (cd $$d && latexmk -C); done
	rm -rf $(OUTPUT_DIR)/
