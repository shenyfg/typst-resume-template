.PHONY: all preview clean

all: resume_zh.pdf

resume_zh.pdf: resume_zh.typ resume_template.typ
	typst compile resume_zh.typ resume_zh.pdf

preview: resume_zh.typ resume_template.typ
	typst compile resume_zh.typ --format png --ppi 300 assets/preview_{p}.png

clean:
	rm -f *.pdf assets/preview_*.png
