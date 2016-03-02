.PHONY: all clean

all:
	$(MAKE) -C latex all
	cp latex/*.pdf pdf

clean:
	$(MAKE) -C latex clean
	# cd pdf && rm -f *.pdf
