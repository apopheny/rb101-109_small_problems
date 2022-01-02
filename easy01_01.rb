# Repeat Yourself

# Write a method that takes two arguments, a string and a positive integer, and prints the string as many times as the integer indicates.

# Example:

# repeat('Hello', 3)

# Output:

# Hello
# Hello
# Hello

def repeat(int, string)
  int.times { p string }
end

puts "What would you like to repeat?"
phrase = gets.chomp
puts "How many times?"
time = gets.chomp.to_i

repeat(time, phrase)