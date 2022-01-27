# Double Char (Part 1)
# Write a method that takes a string, and returns a new string in which every character is doubled.

# Examples:

# Copy Code
# repeater('Hello') == "HHeelllloo"
# repeater("Good job!") == "GGoooodd  jjoobb!!"
# repeater('') == ''

def repeater(string)
  result = []
  string.chars.each { |char| result << (char * 2) }
  result.join
end

p repeater('Hello') == "HHeelllloo"
p repeater("Good job!") == "GGoooodd  jjoobb!!"
p repeater('') == ''
