.PHONY: all clean

CC = lualatex
CV_DIR = cv
CONTENTS_DIR = cv/contents
CV_SRCS = $(shell find $(CONTENTS_DIR) -name '*.tex')
BUILD_DIR = cv/build
OUTPUT_DIR = output

all: $(OUTPUT_DIR)/main.pdf

$(OUTPUT_DIR)/main.pdf: $(CV_DIR)/main.tex $(CV_SRCS) $(CV_DIR)/pubs.bib
	mkdir -p $(BUILD_DIR) $(OUTPUT_DIR)
	$(CC) -output-directory=$(BUILD_DIR) $<
	biber $(BUILD_DIR)/main
	$(CC) -output-directory=$(BUILD_DIR) $<
	cp $(BUILD_DIR)/main.pdf $@

clean:
	rm -rf $(BUILD_DIR)/ $(OUTPUT_DIR)/
