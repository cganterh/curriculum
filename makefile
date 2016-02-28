sources = $(wildcard *.tex)
targets = $(sources:.tex=.pdf)

.PHONY: all clean

all: $(targets)

%.pdf: %.tex
	xelatex $<

view: $(targets)
	xdg-open $^

clean:
	rm -f *.aux *.log *.out $(targets)
