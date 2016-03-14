.PHONY: view
view: $(targets)
	for FILE in $^; \
	do \
		xdg-open $$FILE; \
	done
