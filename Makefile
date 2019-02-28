SRC = $(wildcard *.tex)

PDFS = $(SRC:.tex=.pdf)

all:	en zh photo

en:	resume.pdf

zh:	resume-zh.pdf

photo:	resume_photo.pdf

%.pdf:  %.tex
	xelatex $<

ifeq ($(OS),Windows_NT)
  # on Windows
  RM = cmd //C del
else
  # on Unix/Linux
  RM = rm -f
endif

clean:
	$(RM) *.log *.aux *.bbl *.blg *.synctex.gz *.out *.toc *.lof *.idx *.ilg *.ind *.pdf
