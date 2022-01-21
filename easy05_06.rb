# Letter Counter (Part 1)

# Write a method that takes a string with one or more space separated words and returns a hash that shows the number of words of different sizes.

# Words consist of any string of characters that do not include a space.

# Examples

# word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 1, 6 => 1 }
# word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 1, 7 => 2 }
# word_sizes("What's up doc?") == { 6 => 1, 2 => 1, 4 => 1 }
# word_sizes('') == {}

# Problem

# Receive string consisting of letters, characters, or empty
# Substrings are dilineated by spaces
# Special characters contribute to the length of a substring
# Count the number of instances of substrings of any length greater than zero and output the results to a hash
# If no strings of a length greater than zero occur, output an empty hash

# Data structures
# input: string
# output: hash

# Algorithm

# method word_sizes receives one paramater, which is the input string
# initialize an empty hash
# split string by spaces and save return to an array
# if array[index] > 0, hash[array[index].size] += 1
# return hash

def word_sizes(string)
  count = Hash.new

  string.split.each do |substring|
    if substring.size > 0 
      count[substring.size] == nil ? count[substring.size] = 1 : count[substring.size] += 1
    end
  end
  
  count
end

p word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 1, 6 => 1 }
p word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 1, 7 => 2 }
p word_sizes("What's up doc?") == { 6 => 1, 2 => 1, 4 => 1 }
p word_sizes('') == {}
