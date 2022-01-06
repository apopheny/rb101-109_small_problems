# Searching 101
# Write a program that solicits 6 numbers from the user, then prints a message that describes whether or not the 6th number appears amongst the first 5 numbers.

# Examples:

# Copy Code
# ==> Enter the 1st number:
# 25
# ==> Enter the 2nd number:
# 15
# ==> Enter the 3rd number:
# 20
# ==> Enter the 4th number:
# 17
# ==> Enter the 5th number:
# 23
# ==> Enter the last number:
# 17
# The number 17 appears in [25, 15, 20, 17, 23].


# ==> Enter the 1st number:
# 25
# ==> Enter the 2nd number:
# 15
# ==> Enter the 3rd number:
# 20
# ==> Enter the 4th number:
# 17
# ==> Enter the 5th number:
# 23
# ==> Enter the last number:
# 18
# The number 18 does not appear in [25, 15, 20, 17, 23].

def prompt(text)
  puts "==> #{text}"
end

first_five = []
last = Integer

prompt("Enter the 1st number")
first_five << gets.chomp.to_i
prompt("Enter the 2nd number")
first_five << gets.chomp.to_i
prompt("Enter the 3rd number")
first_five << gets.chomp.to_i
prompt("Enter the 4th number")
first_five << gets.chomp.to_i
prompt("Enter the 5th number")
first_five << gets.chomp.to_i
prompt("Enter the last number")
last = gets.chomp.to_i

first_five.include?(last) ? prompt("The number #{last} appears in #{first_five}.") : prompt("The number #{last} does not appear in #{first_five}.")