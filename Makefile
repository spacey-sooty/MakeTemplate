# Output directory
OUTDIR = build

# Binary name
BIN = binary

# Compile Command and Compile Args
# CC =
# CARGS =

all: clean lint compile run install

clean:
	rm -rf $(OUTDIR)

compile:
	mkdir -p $(OUTDIR)

run: compile

lint:

install: compile
	sudo mv $(OUTDIR)/$(BIN) /usr/local/bin/$(BIN)
