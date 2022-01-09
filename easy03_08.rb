# Palindromic Strings (Part 1)
# Write a method that returns true if the string passed as an argument is a palindrome, false otherwise. A palindrome reads the same forward and backward. For this exercise, case matters as does punctuation and spaces.

# Examples:

# Copy Code
# palindrome?('madam') == true
# palindrome?('Madam') == false          # (case matters)
# palindrome?("madam i'm adam") == false # (all characters matter)
# palindrome?('356653') == true

def palindrome?(string)
  string == string.reverse
end

# Now write a method that determines whether an array or a string is palindromic; that is, write a method that can take either an array or a string argument, and determines whether that argument is a palindrome. You may not use an if, unless, or case statement or modifier.

def arr_palindrome?(arr)
  places = (arr.length / 2)
  counter = 0
  truthy_arr = []
  loop do
    break if counter > places
    comparison1 = arr[counter]
    counter += 1
    comparison2 = arr[-counter]
    truthy_arr << (comparison1 == comparison2)
  end
  output = truthy_arr.select { |element| element == false }
  output.empty?
end

def palindrome_type?(argument)
  argument.class == String ? palindrome?(argument) : arr_palindrome?(argument)
end

p palindrome_type?([1, 2, 3, 4, 5])
p palindrome_type?([1, 2, 2, 1])
p palindrome_type?([1, 2, 3, 2, 1])
p palindrome_type?('madam') == true
p palindrome_type?('Madam') == false          # (case matters)
p palindrome_type?("madam i'm adam") == false # (all characters matter)
p palindrome_type?('356653') == true