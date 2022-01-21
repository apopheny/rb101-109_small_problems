# ASCII String Value
# Write a method that determines and returns the ASCII string value of a string that is passed in as an argument. The ASCII string value is the sum of the ASCII values of every character in the string. (You may use String#ord to determine the ASCII value of a character.)

# Copy Code
# ascii_value('Four score') == 984
# ascii_value('Launch School') == 1251
# ascii_value('a') == 97
# ascii_value('') == 0

# input: string
# output: integer

# rules: integer must be the sum of all ASCII values within the string
#   an empty string should have an ASCII value of 0
#   spaces have an ASCII value of 32

# Data Structures
#   Collect ACII values as elements within an array
#   Sum array and return integer

# Algorithm
#   define method with one paramater: the string being received
#   iterate through string to separate all string index positions to index positions
#   transform all elements within the array to their ASCII values
#   sum array
#   return array
#   if array is empty, return zero


def ascii_value(string)
  string == "" ? ascii_values = [0] : ascii_values = string.chars
  ascii_values.map! { |chars| chars.ord }
  ascii_values.sum
end

p ascii_value('Four score') == 984
p ascii_value('Launch School') == 1251
p ascii_value('a') == 97
p ascii_value('') == 0