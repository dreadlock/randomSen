; IMPORT LIBRARY
(require 2htdp/batch-io)

; IMPORT DATA
(define THEALCHEMIST (read-words "thealchemist"))
(define MADNESS (read-words "atthemountainsofmadness"))
(define RAW (append THEALCHEMIST MADNESS))

;; example of RAW
;; (list "Hi" "there." "How" "are" "you.")

; to identify words ending in ? ! .
; to insert "." to signify the end of the sentence
; to insert "" to signify the begining of the sentence
(define (process data)
  (flatten
   (map 
    (lambda (word)
      (if (member (string-ref word (sub1 (string-length word)))
                  (list #\! #\. #\?))
          (list word "." "")
          (list word)))
    data)))
  
(define PROCESSED
  (process RAW))

; FUNCTIONS
; "hi" "there"
; "hi" "you"
; word "hi" has a bag of following words: (list "there" "you")
(define (update-word word1 word2 vocab)
  (hash-update vocab word1 (lambda (x) (cons word2 x)) '()))

(define (add-words words)
  (cond
    [(= 1 (length words)) (hash)]
    [(update-word (first words) (second words) (add-words (rest words)))]))

(define STYLE (add-words PROCESSED))

;; example of STYLE
;; "hi" ---> ("there" "you")
;; "and" ---> ("it" "you" "they")
;; "go" ---> ("there" "shopping" "hiking")

; function random-word is to take out a random following word
; from a given word, using its own bag of following words
(define (random-word word-bag)
  (define l (length word-bag))
  (list-ref word-bag (random l)))
;; example of random-word
;; "go" ---> ("there" "shopping" "hiking")
;; take out one random word from the bag ("there" "shopping" "hiking")
;; which is "shopping"

(define (next-word word vocabulary)
  (define word-bag (hash-ref vocabulary word))
  (random-word word-bag))

; generate-sentence ends generating
; when the word "." is generated
(define (generate-sentence sentence)
  (cond
    [(equal? "." (next-word (first sentence) STYLE)) (reverse sentence)]
    [(generate-sentence
      (cons
       (next-word (first sentence) STYLE)
       sentence))]))

; RESULT
; starts with "" (the begining of a sentence)
; ends with "." (the end of a sentence)
; join the result together
(define (say-something)
  (string-join (generate-sentence (list "")) " "))
      
