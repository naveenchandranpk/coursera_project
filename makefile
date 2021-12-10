README.md: guessinggame.sh
	echo '#Guessing game' > README.md
	echo ' '
	echo "\`Latest Source code Update is at ==>>\`" >> README.md
	date >> README.md
	echo ' '
	wc -l guessinggame.sh | egrep -o "[0-9]+" >> README.md
clean:
	rm README.md
