README.md: guessinggame.sh
	echo '# Guessing game' > README.md
	echo ' ' >> README.md
	echo "\`Latest Source code Update is at ==>>\`" >> README.md
	date >> README.md
	echo ' ' >> README.md
	wc -l guessinggame.sh | egrep -o "[0-9]+" >> README.md
clean:
	rm README.md
