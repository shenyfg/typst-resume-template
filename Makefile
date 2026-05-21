.PHONY: all clean

all: resume_zh.pdf

resume_zh.pdf: resume_zh.typ resume_template.typ
	typst compile resume_zh.typ resume_zh.pdf

clean:
	rm -f *.pdf
