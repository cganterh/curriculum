.DEFAULT_GOAL = all

spat = latex/%.tex
tpat = pdf/%.pdf

sources = $(wildcard latex/*.tex)
targets = $(patsubst $(spat),$(tpat),$(sources))

include view.mk

.PHONY: all
all: $(targets)

$(tpat): $(spat)
	$(MAKE) -C latex $(notdir $@)
	cp $(patsubst %.tex,%.pdf,$<) pdf

.PHONY: clean
clean:
	$(MAKE) -C latex clean
	rm -f $(targets)
