
cv-pdf-german: 
	mkdir -p build/cv/german; \
	cd cv; \
	pdflatex -output-directory ../build/cv/german deutsch_cv.tex

cv-pdf-english: 
	mkdir -p build/cv/english; \
	cd cv; \
	pdflatex -output-directory ../build/cv/english english_cv.tex


purge:
	-rm -f *.{aux,dvi,log,bbl,blg,brf,fls,toc,thm,out,fdb_latexmk}

clean: purge
	-rm -rf build/cv

.PHONY: cv-pdf-german cv-pdf-english purge clean