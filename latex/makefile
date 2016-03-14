.DEFAULT_GOAL = all

sources = $(wildcard *.tex)
targets = $(sources:.tex=.pdf)

include ../view.mk

.PHONY: all
all: $(targets)

%.pdf: %.tex
	xelatex $<


.PHONY: clean
clean:
	rm -f *.aux *.log *.out $(targets)
