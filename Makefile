ADOC_FILES = allan_wilson.adoc

all : allan_wilson.pdf index.html

allan_wilson.pdf : $(ADOC_FILES)
	asciidoctor-pdf $(ADOC_FILES)

index.html : $(ADOC_FILES)
	asciidoctor --out-file index.html $(ADOC_FILES)

.PHONY: clean

clean :
	rm -f allan_wilson.pdf index.html
