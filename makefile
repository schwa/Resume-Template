html : Resume.markdown
	docker run -v "$(shell pwd):/source" jagregory/pandoc -f markdown RESUME.markdown -o output/Example-Resume.html

tidy : html
    docker run -v "$(shell pwd):/src" imega/tidy -config /src/config/tidy.config -o /src/output/Example-Resume.html /src/output/Example-Resume.html

pdf : Resume.markdown
	docker run -v "$(shell pwd):/source" jagregory/pandoc -f markdown RESUME.markdown --latex-engine=xelatex -o output/Example-Resume.pdf

all : tidy pdf
