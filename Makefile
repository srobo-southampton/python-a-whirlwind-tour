all:
	pandoc --standalone --template=template.html -o python.html python.md
