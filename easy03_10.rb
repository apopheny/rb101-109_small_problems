
# Palindromic Numbers

# Write a method that returns true if its integer argument is palindromic, false otherwise. A palindromic number reads the same forwards and backwards.

# Examples:

# palindromic_number?(34543) == true
# palindromic_number?(123210) == false
# palindromic_number?(22) == true
# palindromic_number?(5) == true

def palindromic_number?(int)
int = int / 1
p int
  int.to_s == int.to_s.reverse
end


p palindromic_number?(0034543) == true
p palindromic_number?(123210) == false
p palindromic_number?(22) == true
p palindromic_number?(5) == true

# Further Exploration

# Suppose your number begins with one or more 0s. Will your method still work? Why or why not? Is there any way to address this?

# One or more zeros is an octal number

