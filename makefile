all: README.md

README.md: guessinggame.sh
	echo "## The Unix Workbench peer-graded assignment" > README.md
	echo "\n**Program behaviour**: " >> README.md
	echo "\n -When the program starts the user should be asked how many files are in the current directory, and then the user should be prompted for a guess." > README.md
	echo "\n -If the user's answer is incorrect the user should be advised that their guess was either too low or too high and then they should be prompted to try to guess again." > README.md
	echo "\n -If the user's guess is correct then they should be congratulated and the program should end." > README.md
	echo -n "\n**Make date**: " >> README.md
	date >> README.md
	echo -n "\n**Number of lines in guessinggame.sh:** " >> README.md
	grep -c '' guessinggame.sh >> README.md

clean:
	rm README.md 