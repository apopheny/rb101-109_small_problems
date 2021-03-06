# Sum of Digits

# Write a method that takes one argument, a positive integer, and returns the sum of its digits.

# Examples:

# puts sum(23) == 5
# puts sum(496) == 19
# puts sum(123_456_789) == 45

# The tests above should print true.

# For a challenge, try writing this without any basic looping constructs (while, until, loop, and each).

def sum(num)
   arr_num = num.to_s.split('')
   arr_num.map! { |string| string.to_i}
arr_num.sum
end

puts sum(23) == 5
puts sum(496) == 19
puts sum(123_456_789) == 45