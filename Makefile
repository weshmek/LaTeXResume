all : resume.pdf resume.ps
	

resume.ps : resume.dvi
	dvips resume.dvi

resume.dvi : resume.tex
	pslatex resume.tex

resume.pdf : resume.tex
	pdflatex resume.tex

.PHONY : clean

clean :
	rm resume.ps resume.pdf

