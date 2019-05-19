.PHONY: install compile decompile

SOURCE = $(shell pwd)
SOURCE_EXT = applescript
DESTINATION = ${HOME}/Library/Scripts
DEST_EXT = scpt

install: compile

compile:
	find . -type f -name '*.$(SOURCE_EXT)' -print0 |\
	while IFS= read -r -d '' file; do \
	file_no_ext="$${file%.*}"; \
	name="$${file_no_ext##*/}"; \
	directory="$(DESTINATION)/$${file%/*}"; \
	destination="$$directory/$$name.$(DEST_EXT)"; \
	mkdir -p "$$directory" && \
	osacompile -o "$$destination" "$$file"; \
	done

decompile:
	cd $(DESTINATION) && \
	find . -type f -name '*.$(DEST_EXT)' -print0 |\
	while IFS= read -r -d '' file; do \
	file_no_ext="$${file%.*}"; \
	name="$${file_no_ext##*/}"; \
	directory="$(SOURCE)/$${file%/*}"; \
	destination="$$directory/$$name.$(SOURCE_EXT)"; \
	mkdir -p "$$directory" && \
	osadecompile "$$file" > "$$destination"; \
	done

remove_trailing_lines:
	git ls-files "*.applescript" -z |\
		xargs -0 sed -i '' -e :a -e '/./,$$!d;/^\n*$$/{$$d;N;};/\n$$/ba'
	git ls-files "*.applescript" -z |\
		xargs -0 sed -i '' '/./,$$!d'