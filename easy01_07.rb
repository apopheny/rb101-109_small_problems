# Stringy Strings

# Write a method that takes one argument, a positive integer, and returns a string of alternating 1s and 0s, always starting with 1. The length of the string should match the given integer.

# Examples:

# puts stringy(6) == '101010'
# puts stringy(9) == '101010101'
# puts stringy(4) == '1010'
# puts stringy(7) == '1010101'

# The tests above should print true.

def stringy(int, zero = 1)
  output = ''
  count = int
  loop do
    if zero == 0
      (count - int).odd? ? output << '1' : output << "0" 
      count -= 1
      break if count == 0
    elsif
      (count - int).odd? ? output << '0' : output << "1" 
      count -= 1
      break if count == 0
    end
  end
  output
end

puts stringy(6) #== '101010'
puts stringy(9) == '101010101'
puts stringy(4) == '1010'
puts stringy(7) == '1010101'

# Further Exploration

# Modify stringy so it takes an additional optional argument that defaults to 1. If the method is called with this argument set to 0, the method should return a String of alternating 0s and 1s, but starting with 0 instead of 1.