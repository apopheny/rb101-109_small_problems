# Convert a Number to a String!

# In the previous two exercises, you developed methods that convert simple numeric strings to signed Integers. In this exercise and the next, you're going to reverse those methods.

# Write a method that takes a positive integer or zero, and converts it to a string representation.

# You may not use any of the standard conversion methods available in Ruby, such as Integer#to_s, String(), Kernel#format, etc. Your method should do this the old-fashioned way and construct the string by analyzing and manipulating the number.

# Examples

# integer_to_string(4321) == '4321'
# integer_to_string(0) == '0'
# integer_to_string(5000) == '5000'

def zeros(int)
  zeros = 0
  x = 10
  loop do
    break if (int / x) == 0 
    x *= 10
    zeros += 1
  end
  zeros
end

def to_string(int)
  case int
  when 0
    "0"
  when 1 
    "1"
  when 2 
    "2"
  when 3 
    "3"
  when 4 
    "4"
  when 5 
    "5"
  when 6 
    "6"
  when 7 
    "7"
  when 8 
    "8"
  when 9 
    "9"
  end
end

def integer_to_string(int)
  arr = []
  integer = int
  loop do
    length = zeros(int)
    break if length == 0
    arr << (int / (10**length))
    int = int - (arr.last * (10**length)) 
  end
  if arr.size == 1 && integer > 10
    zeros(integer).times do
      arr << 0
    end
  elsif
    arr << int
  end
  arr.map! { |int| to_string(int) }
  arr.join
end

p integer_to_string(4321) == '4321'
p integer_to_string(0) == '0'
p integer_to_string(5000) == '5000'