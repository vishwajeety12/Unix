#/usr/bin/env bash
all: README.md
README.md: guessinggame.sh
	touch README.md
	echo "# Guessing Game Bash Script for Unix Workbench\n" > README.md
	echo '* This Make file was ran at: $(shell date +%Y-%m-%d:%H:%M:%S)\n' >> README.md
	echo '* There were $(shell wc -l < guessinggame.sh) lines in guessinggame.sh\n' >> README.md
clean:
	rm README.md
	
	
