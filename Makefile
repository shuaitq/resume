SRC = $(wildcard *.tex)

PDFS = $(SRC:.tex=.pdf)

all:	clean en zh_CN photo

en:	clean resume.pdf

zh_CN:	clean resume-zh_CN.pdf

photo:	clean resume_photo.pdf

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
