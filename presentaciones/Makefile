all: git_apunte git presentacion.pdf historia.htm arquitectura.pdf

git_apunte:
	grep -v ". . ." introgit.md > apunteintrogit.md && pandoc apunteintrogit.md -s -o apunteintrogit.pdf -t latex -V aspectratio=169 -V theme=Warsaw -V fontsize=14pt -f markdown+implicit_figures 


git:
	pandoc introgit.md -s -o introgit.pdf -t beamer -V aspectratio=169 -V theme=Warsaw -V fontsize=10pt -f markdown+implicit_figures  

presentacion.pdf:
	pandoc presentacion.md -s -o presentacion.pdf -t beamer -V aspectratio=169 -V theme=Warsaw -V fontsize=8pt -f markdown+implicit_figures

historia.htm:
	pandoc -s -t revealjs -o historia.htm historia.md --css historia.css

arquitectura.pdf:
	pandoc arquitectura.md -s -o arquitectura.pdf -t beamer -V aspectratio=169 -V theme=Warsaw -V fontsize=8pt -f markdown+implicit_figures

clean:
	rm -f presentacion.pdf historia.htm arquitectura.pdf apunteintrogit.md introgit.md
