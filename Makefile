html:
	pandoc --template=template.html -o python.html python.md
	pandoc --template=template.html -o worksheet.html worksheet.md

tex:
	pandoc --template=template.tex --highlight-style=tango -o python.tex python.md
	pandoc --template=template.tex --highlight-style=tango -o worksheet.tex worksheet.md

pdf: tex
	pdflatex python.tex
	pdflatex worksheet.tex
