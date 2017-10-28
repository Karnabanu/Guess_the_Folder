define readmetext
# Welcome to Guessing game

## Guess the number of files in a folder

Run [guessinggame.sh](https://github.com/Karnabanu/Guess_the_Folder/blob/master/guessinggame.sh) in a shell.

You will be prompted with 

`How may files are there in the folder`

You can give your inputs. Only **Numbers** are allowed

If number of files you guessed is more than actual number files you will get

`Your guess is too high`

If the number is smaller than actual number you will get

`Your guess is too high`

This will run until you enter correct guess.
when you enter correct guess you will get

`Congratulations your guess is correct`

And script will exit and you will get prompt back.
endef
export readmetext


.PHONEY: all clean Readme.md

all: clean Readme.md FORCE

Readme.md: clean FORCE
	$(file > Readme.md,$(readmetext))
	printf "\n## This file is create on $(shell date)" >> Readme.md
clean:
	test Readme.md || rm Readme.md 

FORCE:
