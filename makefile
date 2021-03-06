TEX = pandoc
src = template.tex details.yml
FLAGS = --pdf-engine=xelatex

resume.pdf : $(src)
	$(TEX) $(filter-out $<,$^ ) -o $@ --template=$< $(FLAGS)
	open $@

.PHONY: clean
clean :
	rm resume.pdf
