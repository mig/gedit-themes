#!/usr/bin/make --no-print-directory

.ONESHELL:
all: gedit3
	@$(MAKE) -s done

gedit3:
	@mkdir -p ${HOME}/.local/share/gedit/styles
	@cp -v *.xml ${HOME}/.local/share/gedit/styles

gedit2:
	@mkdir -p ${HOME}/.gnome2/gedit/styles
	@cp -v *.xml ${HOME}/.gnome2/gedit/styles/.

done:
	@echo installation done!