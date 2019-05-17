# randomSen

## Description

This repo has a ```main.rkt``` file which contains all the code and two sample text (The alchemist and At the mountains of madness by Lovecraft).

My ```main.rkt``` file does the following steps:

*Step 1 100pts* Import libraries to read data. The data looks like this:

```

(list "Hi" "there." "How" "are" "you.")

```

*Step 2 200pts* Process the words a little bit to identify the ending of the sentence. I search for words ending in ```. ? !``` After identifying these words, I insert ```"." ""``` into the list of words accordingly. ```"."``` signifies the end of a sentence and ```""``` signifies the beginning. 

*Step 3 300pts* To collect map a word into its immediate successor. As I traverse through the list of words, each word has its own bag of followers. For example, if word2 follows word1, word2 would be put into word1's bag of followers.

*Step 4 200pts* To generate a random word that would statistically come after a given word. For example, given word1, I pick out a random member from its bag of followers.

*Step 5 300pts* I write a function to generate words given the first word "" (the begining of a sentence) and keeps generating words until it reaches the word "." (the end of a sentence). Then I join the generated words together.

## To start

You can do one of the following

- Fork this repo.

- Use repl.it

- Use other kinds of online coding platform

## To submit

- Do the 
