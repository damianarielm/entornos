.PHONY: clean strip all see re
SHELL=/bin/bash

files=$(wildcard *.tex)
pdfs=$(patsubst %.tex,%.pdf, $(files))
auxs=$(patsubst %.tex,%.aux, $(files))
logs=$(patsubst %.tex,%.log, $(files))

all: slides.pdf

%.pdf: %.tex *.tex
	xelatex $<
	xelatex $<

clean:
	rm -f $(pdfs)
	rm -f $(auxs)
	rm -f $(logs)

strip:
	rm -f $(auxs)
	rm -f $(logs)

re: clean all

see: all
	evince $(pdfs)

# Guido
watch: slides.pdf
	on-change.sh -n slides.tex -- make
