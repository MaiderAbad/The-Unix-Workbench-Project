all: README.md

README.md: guessinggame.sh 
	@echo "# Guessing the file number - The Unix Workbench" > README.md
	@echo "* **Make was run at:** $$(date +%y.%m.%d-%H:%M:%S)" >> README.md
	@echo "* **Number of lines of code contained in guessinggame.sh:** $$(wc -l < guessinggame.sh)" >> README.md

clean:
	rm README.md 
