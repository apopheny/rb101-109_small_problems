# Counting the Number of Characters
# Write a program that will ask a user for an input of a word or multiple words and give back the number of characters. Spaces should not be counted as a character.

# input:

# Copy Code
# Please write word or multiple words: walk
# output:

# Copy Code
# There are 4 characters in "walk".
# input:

# Copy Code
# Please write word or multiple words: walk, don't run
# output:

# Copy Code
# There are 13 characters in "walk, don't run".

def count_chars(string)
  nospaces = string.split(" ").join
  nospaces.size
end

puts "Please write a word or multiple words:"
phrase = gets.chomp

puts "There are #{count_chars(phrase)} characters in \"#{phrase}\"."
  