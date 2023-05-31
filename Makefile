SHELL := bash
DEST_DIR ?= /usr/local/bin

.PHONY: install
install:
	for file in $(shell find $(CURDIR)/bin -type f -not -name ".*.swp"); do \
		f=$$(basename $$file); \
		sudo ln -sf $$file $(DEST_DIR)/$$f; \
	done
