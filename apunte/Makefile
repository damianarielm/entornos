LYXFLAGS=-E pdf2
GSFLAGS=-sDEVICE=pdfwrite -dNOPAUSE -dQUIET -dBATCH
LQFLAGS=-dPDFSETTINGS=/ebook
GRAYFLAGS=-sProcessColorModel=DeviceGray -sColorConversionStrategy=Gray

apunte.pdf: apuntelq.pdf
	mv apuntelq.pdf apunte.pdf

apuntehd.pdf: apunte.lyx
	lyx $(LYXFLAGS) apuntehd.pdf apunte.lyx

apuntelq.pdf: apuntehd.pdf
	gs $(GSFLAGS) $(LQFLAGS) -sOutputFile=apuntelq.pdf apuntehd.pdf

bw.lyx: apunte.lyx
	cp apunte.lyx bw.lyx
	sed -i "s/textclass lyx/textclass bw/g" bw.lyx
	sed -i "s/github-dark/bw/g" bw.lyx
	sed -i "s/solarized-dark/bw/g" bw.lyx

bwhq.pdf: bw.lyx
	lyx $(LYXFLAGS) bwhq.pdf bw.lyx
	gs $(GSFLAGS) $(GRAYFLAGS) -sOutputFile=tmp.pdf bwhq.pdf
	mv tmp.pdf bwhq.pdf

bwlq.pdf: bw.lyx
	lyx $(LYXFLAGS) bwhq.pdf bw.lyx
	gs $(GSFLAGS) $(GRAYFLAGS) $(LQFLAGS) -sOutputFile=bwlq.pdf bwhq.pdf

fundamentos.lyx: apunte.lyx
	INICIO=$$(grep -in "Pensar no garantiza" apunte.lyx | cut -d: -f1); \
	INICIO=$$(($$INICIO-6)); \
	FIN=$$(wc -l < apunte.lyx) ; \
	FIN=$$(($$FIN-2)); \
	sed "$$INICIO,$$FIN d" apunte.lyx > fundamentos.lyx

fundamentoshq.pdf: fundamentos.lyx
	lyx $(LYXFLAGS) fundamentoshq.pdf fundamentos.lyx

fundamentoslq.pdf: fundamentoshq.pdf
	gs $(GSFLAGS) $(LQFLAGS) -sOutputFile=fundamentoslq.pdf fundamentoshq.pdf

bash.lyx: apunte.lyx
	INICIO=$$(grep -in "Introduccion" apunte.lyx | cut -d: -f1 | head -n1); \
	FIN=$$(grep -in "Introduccion" apunte.lyx | cut -d: -f1 | head -2 | tail -1); \
	FIN=$$(($$FIN-1)); \
	sed "$$INICIO,$$FIN d" apunte.lyx > bash.lyx
	INICIO=$$(grep -in "Me gusta ofender" bash.lyx | cut -d: -f1); \
	INICIO=$$(($$INICIO-6)); \
	FIN=$$(wc -l < bash.lyx) ; \
	FIN=$$(($$FIN-2)); \
	sed -i "$$INICIO,$$FIN d" bash.lyx
	sed -i '/textclass lyx/a \\\\end_preamble' bash.lyx
	sed -i '/textclass lyx/a \\\\begin_preamble' bash.lyx
	sed -i '/begin_preamble/a \\\\setcounter{chapter}{5}' bash.lyx
	sed -i '/begin_preamble/a \\\\setcounter{part}{1}' bash.lyx

bashhq.pdf: bash.lyx
	lyx $(LYXFLAGS) bashhq.pdf bash.lyx

bashlq.pdf: bashhq.pdf
	gs $(GSFLAGS) $(LQFLAGS) -sOutputFile=bashlq.pdf bashhq.pdf

auxiliares.lyx: apunte.lyx
	INICIO=$$(grep -in "Una computadora es para" apunte.lyx | cut -d: -f1); \
	INICIO=$$(($$INICIO-6)); \
	FIN=$$(grep -in "Me gusta ofender" apunte.lyx | cut -d: -f1); \
	FIN=$$(($$FIN-7)); \
	sed "$$INICIO,$$FIN d" apunte.lyx > auxiliares.lyx
	INICIO=$$(grep -in "Apéndice" auxiliares.lyx | cut -d: -f1); \
	INICIO=$$(($$INICIO-1)); \
	FIN=$$(grep -in "end_body" auxiliares.lyx | cut -d: -f1); \
	FIN=$$(($$FIN-1)); \
	sed -i "$$INICIO,$$FIN d" auxiliares.lyx
	sed -i '/textclass lyx/a \\\\end_preamble' auxiliares.lyx
	sed -i '/textclass lyx/a \\\\begin_preamble' auxiliares.lyx
	sed -i '/begin_preamble/a \\\\setcounter{chapter}{8}' auxiliares.lyx
	sed -i '/begin_preamble/a \\\\setcounter{part}{2}' auxiliares.lyx

auxiliareshq.pdf: auxiliares.lyx
	lyx $(LYXFLAGS) auxiliareshq.pdf auxiliares.lyx

auxiliareslq.pdf: auxiliareshq.pdf
	gs $(GSFLAGS) $(LQFLAGS) -sOutputFile=auxiliareslq.pdf auxiliareshq.pdf

clean:
	rm -f *.pdf bw.lyx fundamentos.lyx bash.lyx auxiliares.lyx
