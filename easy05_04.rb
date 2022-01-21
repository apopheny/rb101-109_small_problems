# Letter Swap
# Given a string of words separated by spaces, write a method that takes this string of words and returns a string in which the first and last letters of every word are swapped.

# You may assume that every word contains at least one letter, and that the string will always contain at least one word. You may also assume that each string contains nothing but words and spaces

# Examples:

# Copy Code
# swap('Oh what a wonderful day it is') == 'hO thaw a londerfuw yad ti si'
# swap('Abcde') == 'ebcdA'
# swap('a') == 'a'

# Problem

# Receive a string of at least one letter, containing only letters and spaces
# Preserving the order of the string, return a new string with the first and last letters of the words within that string swapped, preserving case

# Data structures
# Input: string
# Intermediate: Array
# Output: String

# Considerations:
# pop and unshift methods mutate the string
# string size determines how this will be handled

# Algorithm

# Method receives string
# save an array of the string split by spaces
# Swap the first and last index positions of the elements within that array
      # array[element] << array[element][0]
      # array[element][0] = array[element][-2]
# Join the array with spaces and return

def swap(string)
  swapped_arr = string.split.map do |substring| 
    if substring.size >= 2
      first_char = substring[0]
      last_char = substring[-1]
      substring[0] = last_char
      substring[-1] = first_char
      substring
    else substring
    end
  end
  swapped_arr.join(' ')
end

p swap('Oh what a wonderful day it is') == 'hO thaw a londerfuw yad ti si'
p swap('Abcde') == 'ebcdA'
p swap('a') == 'a'
