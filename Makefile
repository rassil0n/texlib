pdf:
	xelatex main.tex
	xelatex main.tex

read:
	setsid zathura main.pdf &
