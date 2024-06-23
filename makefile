README.md: guessinggame.sh
	echo "# Guessing Game Project" > README.md
	echo "" >> README.md
	echo "## Description" >> README.md
	echo "This is a simple guessing game where the user is prompted to guess the number of files in the current directory." >> README.md
	echo "" >> README.md
	echo "## Makefile Run Date" >> README.md
	echo "\`\`\`" >> README.md
	date >> README.md
	echo "\`\`\`" >> README.md
	echo "" >> README.md
	echo "## Number of Lines of Code in guessinggame.sh" >> README.md
	echo "\`\`\`" >> README.md
	wc -l < guessinggame.sh >> README.md
	echo "\`\`\`" >> README.md
