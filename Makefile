.PHONY: all clean

produkter=vedtaegter-haleanmodninger.svg referat.pdf

all: $(produkter)

%.svg: %.dot
	dot -Tsvg $< -o $@

%.pdf: %.tex
	./latexrun -o $@ $<

clean:
	rm -f $(produkter)
	rm -rf latex.out
