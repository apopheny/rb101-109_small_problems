# Sum or Product of Consecutive Integers

# Write a program that asks the user to enter an integer greater than 0, then asks if the user wants to determine the sum or product of all numbers between 1 and the entered integer.

# Examples:

# >> Please enter an integer greater than 0:
# 5
# >> Enter 's' to compute the sum, 'p' to compute the product.
# s
# The sum of the integers between 1 and 5 is 15.


# >> Please enter an integer greater than 0:
# 6
# >> Enter 's' to compute the sum, 'p' to compute the product.
# p
# The product of the integers between 1 and 6 is 720.

def valid_number?(entry)
  original = entry
  entry = entry.to_i.to_s
  entry == original
end

integer = ''

puts '>> Please enter an integer greater than 0:'
  integer = gets.chomp

loop do
  if valid_number?(integer) 
    break
  else 
    puts '>> Please enter an integer greater than 0:'
    integer = gets.chomp
  end
end

range = (1..integer.to_i).to_a

puts ">> Enter 's' to compute the sum, 'p' to compute the product."
response = gets.chomp[0].downcase


loop do
  if response == 's'
    puts "The sum of the integers between 1 and #{integer} is #{range.inject(:+)}."
    break
  elsif response == 'p'
    puts "The product of the integers between 1 and #{integer} is #{range.inject(:*)}."
    break
  else 
    puts ">> Enter 's' to compute the sum, 'p' to compute the product."
    response = gets.chomp[0].downcase
  end
end
