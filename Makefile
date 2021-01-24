SRC	:= index.tex
TARGET	:= cpp_simple_tutorial

$(TARGET):
	xelatex --jobname=$(TARGET) -interaction=nonstopmode --shell-escape $(SRC)
	bibtex $(TARGET).aux
	xelatex --jobname=$(TARGET) -interaction=nonstopmode --shell-escape $(SRC)
	xelatex --jobname=$(TARGET) -interaction=nonstopmode --shell-escape $(SRC)
