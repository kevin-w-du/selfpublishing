
CHAPTERS = book.tex header.tex latexbasics.tex tricks.tex publishing.tex chapter4.tex
OTHERS = titlepage.tex preface.tex author.tex copyright.tex dedication.tex acknowledgment.tex



all: book.pdf 

book.pdf: $(CHAPTERS) $(OTHERS)
	pdflatex book.tex

index:
	pdflatex book.tex
	pdflatex book
	makeindex book
	pdflatex book

git:
	git commit -am"..."
	git push

bib:
	pdflatex book.tex
	bibtex   book
	pdflatex book.tex
	pdflatex book.tex

clean:
	rm -f *.log *.dvi *.aux *.bbl *.blg *~ *.out *.det 
	@@rm -f *~

