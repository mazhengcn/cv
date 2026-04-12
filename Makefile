.PHONY: all clean

CV_DIR = cv
CONTENTS_DIR = cv/contents
CV_SRCS = $(shell find $(CONTENTS_DIR) -name '*.tex')
BUILD_DIR = cv/build
OUTPUT_DIR = output

all: $(OUTPUT_DIR)/main.pdf

$(OUTPUT_DIR)/main.pdf: $(CV_DIR)/main.tex $(CV_SRCS) $(CV_DIR)/publications.bib
	mkdir -p $(OUTPUT_DIR)
	cd $(CV_DIR) && latexmk
	cp $(CV_DIR)/main.pdf $@

clean:
	cd $(CV_DIR) && latexmk -C
	rm -rf $(BUILD_DIR)/ $(OUTPUT_DIR)/
