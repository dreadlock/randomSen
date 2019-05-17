# randomSen

## Description

This repo has a ```main.rkt``` file which contains all the code and two sample text (The alchemist and At the mountains of madness by Lovecraft).

My ```main.rkt``` file does the following steps:

**Step 1 100pts** Import libraries to read data. The data looks like this:

```

(list "Hi" "there." "How" "are" "you.")

```

**Step 2 200pts** Process the words a little bit to identify the ending of the sentence. I search for words ending in ```. ? !``` After identifying these words, I insert ```"." ""``` into the list of words accordingly. ```"."``` signifies the end of a sentence and ```""``` signifies the beginning. 

For example, ```"invader." ---> "invader." "." ""```

**Step 3 300pts** To collect all the immediate successor of a word. As I traverse through the list of words, each word has its own bag of followers. For example, if word2 follows word1, word2 would be put into word1's bag of followers.

```

"hi" ---> (list "there" "you")
"and" ---> (list "you" "it" "they")
"go" ---> (list "there" "shopping" "hiking")

```

**Step 4 200pts** Given word1, generate a word that statistically comes after word1. To do this, I pick out a random member from word1's bag of followers that I already collected in step 3.

```
"go" ---> (list "there" "shopping" "hiking")

pick a random member: "shopping"
```

**Step 5 300pts** I write a function to generate words given the first word "" (the begining of a sentence) and keeps generating words until it reaches the word "." (the end of a sentence). Then I join the generated words together.

```

> (say-something)
" But I’ve got the question."

> (say-something)
" The linkage of the walls; facts we mechanically carried through our vitals."

> (say-something)
" These wings and primordial temple-ruins on for the evident intent of scene of today."

> (say-something)
" Half-paralysed with its sheer primitive anxiety to move ahead, we could not a living thing he released from aperture."

> (say-something)
" In what I thought for the wings and as well."


```

## To start

You can do one of the following

- Fork this repo.

- Do whatever you want, show me the code.

## Principles

- Accept multi-lang: Excel, R, Matlab, Python, Java, JS, Scala, Clojure, Scheme etc

- Try to elaborate the steps in your code like I do. If you get stuck, ask. If you do not finish, submit anyway.

- Submit [here](https://forms.gle/tga9uVGnEvTmFytp9), you can submit multiple times<br>

- Time: Friday + Saturday + Sunday

- Results are updated continuously "https://Personal-Blog-Site-6--ayaderaghul.repl.co">here</a><br>
    Ask questions <a target="_blank" href="https://discord.gg/5NthDYE">here</a> (we live online now, ask ask ask)<br>
    Curious about us? See <a target="_blank"  href="https://houseaya.herokuapp.com">here</a>
  </div>


- And you know what, though not a young novice anymore, I still tell you, have faith in humanity..
