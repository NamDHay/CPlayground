CC      := gcc
SRC_DIR := fresher
OUT_DIR := output

SRCS := $(wildcard $(SRC_DIR)/*.c)
BINS := $(patsubst $(SRC_DIR)/%.c, $(OUT_DIR)/%, $(SRCS))

.PHONY: all
all: $(BINS)

$(OUT_DIR):
	mkdir -p $@

$(OUT_DIR)/%: $(SRC_DIR)/%.c | $(OUT_DIR)
	$(CC) -Wall $< -o $@

.PHONY: install
install: all
	mkdir -p $(DESTDIR)/usr/bin
	cp $(OUT_DIR)/* $(DESTDIR)/usr/bin/

.PHONY: list
list:
	@echo "Source files:"
	@ls -la $(SRCS)

.PHONY: clean
clean:
	rm -rf $(OUT_DIR)

