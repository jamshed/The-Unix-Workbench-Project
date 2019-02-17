README.md: guessinggame.sh
	echo "The Unix Workbench Project" > README.md

	date >> README.md

	echo -n "Lines: " >> README.md
	wc -l guessinggame.sh | egrep -o "^[0-9]+" >> README.md
