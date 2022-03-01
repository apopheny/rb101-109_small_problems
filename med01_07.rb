# Write a method that takes a sentence string as input, and returns the same string with any sequence of the words 'zero', 'one', 'two', 'three', 'four', 'five', 'six', 'seven', 'eight', 'nine' converted to a string of digits.

# Example:

# Copy Code
# word_to_digit('Please call me at five five five one two three four. Thanks.') == 'Please call me at 5 5 5 1 2 3 4. Thanks.'

# Problem: Write a program which receives a string. Return the string. If any of the words are numbers written out in word form, the string should contain a string integer of that number instead, accounting only through ones places.

# Input: A string
# Output: A string

# Data Structures: A hash with the conversion of words to number strings

# Algorithm
# Initialize a constant consisting of numbers 0-9 as words, LETTERS
# Initialize a constant consisting of number 0-9 as string numbers, NUMBERS
# Define a program, word_to_digit, with one parameter, string
# initialize a variable to an empty array, result
# Split the string up by space separation into an array
# Iterate through the array elements
  # Iterate through element by index position
  #   If index position is a letter, push it to String
  #   If not, check to see if LETTERS includes String
  #     -If it does, reassign String to String's index position in numbers plus the index position of element that was last iterated through through -1
  #     -push string to result
  #     -If it doesn't, push string to result
  # return result joined with spaces

# Join the elements into a string with spaces and return

LETTERS = %w(zero one two three four five six seven eight nine)
NUMBERS = %w(0 1 2 3 4 5 6 7 8 9)

def word_to_digit(string)
  string.split.map do |substring|
    letter_container = ''
    punctuation_container = ''
    (0...substring.size).each do |index|
      ('a'..'z').include?(substring[index].downcase) ? letter_container << substring[index] : punctuation_container << substring[index]
    end
    letter_container = NUMBERS[LETTERS.index(letter_container)] if LETTERS.include?(letter_container)
    letter_container + punctuation_container 
  end.join(' ')
end

p word_to_digit('Please call me at five five five one two three four. Thanks.') == 'Please call me at 5 5 5 1 2 3 4. Thanks.'