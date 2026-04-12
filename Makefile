.PHONY: all clean

CV_DIR          = cv
CV_CONTENTS_DIR = cv/contents
CV_SRCS         = $(shell find $(CV_CONTENTS_DIR) -name '*.tex')

RS_DIR          = research-statement
RS_CONTENTS_DIR = research-statement/contents
RS_SRCS         = $(shell find $(RS_CONTENTS_DIR) -name '*.tex')

OUTPUT_DIR = output

all: $(OUTPUT_DIR)/cv.pdf $(OUTPUT_DIR)/research-statement.pdf

$(OUTPUT_DIR)/cv.pdf: $(CV_DIR)/main.tex $(CV_SRCS) $(CV_DIR)/publications.bib
	mkdir -p $(OUTPUT_DIR)
	cd $(CV_DIR) && latexmk
	cp $(CV_DIR)/main.pdf $@

$(OUTPUT_DIR)/research-statement.pdf: $(RS_DIR)/main.tex $(RS_SRCS) $(RS_DIR)/references.bib
	mkdir -p $(OUTPUT_DIR)
	cd $(RS_DIR) && latexmk
	cp $(RS_DIR)/main.pdf $@

clean:
	cd $(CV_DIR) && latexmk -C
	cd $(RS_DIR) && latexmk -C
	rm -rf $(OUTPUT_DIR)/
