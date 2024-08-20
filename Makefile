SHELL := /bin/bash

.PHONY: install-font start stop

install-font:
	source font.sh

start:
	source start.sh

stop:
	source stop.sh