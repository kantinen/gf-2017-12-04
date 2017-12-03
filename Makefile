.PHONY: all clean

all: vedtaegter-haleanmodninger.svg 

%.svg: %.dot
	dot -Tsvg $< -o $@

clean:
	rm vedtaegter-haleanmodninger.svg
