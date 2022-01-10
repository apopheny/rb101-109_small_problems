
# Palindromic Numbers

# Write a method that returns true if its integer argument is palindromic, false otherwise. A palindromic number reads the same forwards and backwards.

# Examples:

def palindromic_number?(int)
  int.to_s == int.to_s.reverse
end

p palindromic_number?(34543) == true
p palindromic_number?(123210) == false
p palindromic_number?(22) == true
p palindromic_number?(5) == true
p palindromic_number?(123210) == false
p palindromic_number?(22) == true
p palindromic_number?(5) == true
p palindromic_number?(0034543) == true

# Further Exploration

# Suppose your number begins with one or more 0s. Will your method still work? Why or why not? Is there any way to address this?

# One or more zeros is an octal number. The method will still work, but the number represented by a number with leading zeros is not the same number in decimal format. 0034543 is an octal number equivalent to 14691 decimal. The method will call on 14691, and return whether or not that is a palindromic number. If there is a way to consider a number with leading zeros as a decimal number, it would involve passing it as a string, or else it is currently beyond my knowledge.