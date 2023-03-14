all: presentacion.pdf historia.htm arquitectura.pdf

presentacion.pdf:
	pandoc presentacion.md -s -o presentacion.pdf -t beamer -V aspectratio=169 -V theme=Warsaw -V fontsize=8pt -f markdown+implicit_figures

historia.htm:
	pandoc -s -t revealjs -o historia.htm historia.md --css historia.css

arquitectura.pdf:
	pandoc arquitectura.md -s -o arquitectura.pdf -t beamer -V aspectratio=169 -V theme=Warsaw -V fontsize=8pt -f markdown+implicit_figures

clean:
	rm -f presentacion.pdf historia.htm arquitectura.pdf
