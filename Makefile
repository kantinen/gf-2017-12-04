.PHONY: all clean

all: vedtaegter-haleanmodninger.svg 

%.svg: %.dot
	dot -Tsvg $< -o $@

clean:
	rm -f vedtaegter-haleanmodninger.svg
