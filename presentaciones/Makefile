all: presentacion.pdf historia.htm

presentacion.pdf:
	pandoc presentacion.md -s -o presentacion.pdf -t beamer -V aspectratio=169 -V theme=Warsaw -V fontsize=8pt -f markdown+implicit_figures

historia.htm:
	pandoc -s -t revealjs -o historia.htm historia.md --css historia.css

clean:
	rm -f presentacion.pdf historia.htm
