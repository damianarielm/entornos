all: apunte.pdf

apunte.pdf: apunte.lyx
	lyx --export pdf2 apunte.lyx
	gs -sDEVICE=pdfwrite -dCompatibilityLevel=1.4 -dPDFSETTINGS=/ebook \
       -dNOPAUSE -dQUIET -dBATCH -sOutputFile=output.pdf apunte.pdf
	mv output.pdf apunte.pdf


clean:
	rm -f apunte.pdf
