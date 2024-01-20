all: apunte.pdf

apunte.pdf: apunte.lyx
	lyx --export pdf2 apunte.lyx
	gs -sDEVICE=pdfwrite -dCompatibilityLevel=1.4 -dPDFSETTINGS=/ebook \
       -dNOPAUSE -dQUIET -dBATCH -sOutputFile=output.pdf apunte.pdf
	mv output.pdf apunte.pdf

apunte.bw:
	cp apunte.lyx apunte.bw
	sed -i "s/textclass lyx/textclass bw/g" apunte.bw
	sed -i "s/github-dark/bw/g" apunte.bw
	sed -i "s/solarized-dark/bw/g" apunte.bw

bw.pdf: apunte.bw
	lyx --export pdf2 apunte.bw
	gs -sDEVICE=pdfwrite -dCompatibilityLevel=1.4 -dPDFSETTINGS=/ebook \
       -dNOPAUSE -dQUIET -dBATCH -sOutputFile=output.pdf apunte.pdf
	mv output.pdf bw.pdf
	rm -f apunte.bw

clean:
	rm -f apunte.pdf
	rm -f apunte.bw
	rm -f bw.pdf
