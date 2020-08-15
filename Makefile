ADOC_FILES = allan_wilson.adoc

all : allan_wilson.pdf allan_wilson.html

allan_wilson.pdf : $(ADOC_FILES)
	asciidoctor-pdf $(ADOC_FILES)

allan_wilson.html : $(ADOC_FILES)
	asciidoctor $(ADOC_FILES)

.PHONY: clean

clean :
	rm -f allan_wilson.pdf allan_wilson.html
