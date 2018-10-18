#!/bin/bash
 
# -e prevents unpacking specialness
# \c keep the cursor on same line after echoing

echo -e "Hi, please type the word: \c"
read 
echo "The word you entered is: $REPLY"

echo "Can you please enter two words? "
read word1 word2
echo "Here is your input: \"$word1\" \"$word2\""

echo -e "What are your favorite colours ? "
# -a makes read command to read into an array
read -a colours
echo "My favorite colours are also ${colours[0]}, ${colours[1]} and ${colours[2]} :-)" 
