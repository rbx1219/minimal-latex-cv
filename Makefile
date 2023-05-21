PROJ=minimal-latex-cv
PDF=$(PROJ).pdf
TEX=$(PROJ).tex

PROJ_SRC_DIR=/home/rbx/projects/resume/src/minimal-latex-cv

.PHONY: all $(PDF)

all: $(PDF)

$(PDF):
	docker run --rm -it -v $(PROJ_SRC_DIR):/workdir -w /workdir texlive-docker_texlive pdflatex $(TEX)
