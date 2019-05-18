import nltk
import codecs
from itertools import tee, izip
import random

def pairwise(iterable):
    "s -> (s0,s1), (s1,s2), (s2, s3), ..."
    a, b = tee(iterable)
    next(b, None)
    return izip(a, b)

import networkx as nx
G = nx.DiGraph()

start_words = set()
end_words = set()
with codecs.open('atthemountainsofmadness', 'r', 'utf-8') as file1,\
        codecs.open('thealchemist','r','utf-8') as file2:
    text = file1.read() + file2.read()
    sents = nltk.sent_tokenize(text)
    for sent in sents:
        words = nltk.word_tokenize(sent)
        if words and words[0] != '.':
            words = [""] + words
            start_words.add(words[1])
            end_words.add(words[-1])
            G.add_edges_from(list(pairwise(words)))

#print(start_words)
#print(end_words)

while True:
    n = raw_input("Show a sentence (Y/n)?")
    if n.strip().upper() == 'N':
        break
    else:
        # naive random path
        start = random.choice(list(start_words))
        end   = random.choice(list(end_words))
        paths = nx.all_simple_paths(G, source=start, target=end)
        # naive join
        print('\n')
        print(' '.join(next(paths)))
        print('\n')

