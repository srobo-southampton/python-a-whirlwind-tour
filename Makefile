html:
	pandoc --template=template.html -o python.html python.md

tex:
	pandoc --template=template.tex --highlight-style=tango -o python.tex python.md

pdf: tex
	pdflatex python.tex
