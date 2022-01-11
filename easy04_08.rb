# Convert a String to a Signed Number!
# In the previous exercise, you developed a method that converts simple numeric strings to Integers. In this exercise, you're going to extend that method to work with signed numbers.

# Write a method that takes a String of digits, and returns the appropriate number as an integer. The String may have a leading + or - sign; if the first character is a +, your method should return a positive number; if it is a -, your method should return a negative number. If no sign is given, you should return a positive number.

# You may assume the string will always contain a valid number.

# You may not use any of the standard conversion methods available in Ruby, such as String#to_i, Integer(), etc. You may, however, use the string_to_integer method from the previous lesson.

# Examples

# Copy Code
# string_to_signed_integer('4321') == 4321
# string_to_signed_integer('-570') == -570
# string_to_signed_integer('+100') == 100


def string_negative?(string)
  if string[0] == "-"
    string.delete_prefix!("-")
    string_to_signed_integer(string) * -1
  elsif string[0] == "+"
    string.delete_prefix!("+")
    string_to_signed_integer(string)
  else
    string_to_signed_integer(string)
  end
end

def string_to_signed_integer(string)
  int_arr = []
  string.chars.each do |string_number|
    int_arr << string_number.ord - 48
  end
  sum_arr = []
  loop do
    break if int_arr.size <= 0
    sum_arr << int_arr.shift * (10 ** (int_arr.size)) 
  end
  sum_arr.sum
end

p string_negative?('4321') == 4321
p string_negative?('-570') == -570
p string_negative?('+100') == 100
