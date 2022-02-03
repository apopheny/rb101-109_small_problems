# Rotation (Part 2)
# Write a method that can rotate the last n digits of a number. For example:

# Copy Code
# rotate_rightmost_digits(735291, 1) == 735291
# rotate_rightmost_digits(735291, 2) == 735219
# rotate_rightmost_digits(735291, 3) == 735912
# rotate_rightmost_digits(735291, 4) == 732915
# rotate_rightmost_digits(735291, 5) == 752913
# rotate_rightmost_digits(735291, 6) == 352917
# Note that rotating just 1 digit results in the original number being returned.

# You may use the rotate_array method from the previous exercise if you want. (Recommended!)

# You may assume that n is always a positive integer.

def rotate_array(arr)
  method_copy = arr.dup
  method_copy[method_copy.size] =  method_copy[0]
  method_copy.shift
  method_copy
end

def rotate_rightmost_digits(int, index)
  dont_rotate, to_rotate = int.to_s[0...-index], int.to_s[-index..-1]
  (dont_rotate + rotate_array(to_rotate.chars).join).to_i
end

p rotate_rightmost_digits(735291, 1) == 735291
p rotate_rightmost_digits(735291, 2) == 735219
p rotate_rightmost_digits(735291, 3) == 735912
p rotate_rightmost_digits(735291, 4) == 732915
p rotate_rightmost_digits(735291, 5) == 752913
p rotate_rightmost_digits(735291, 6) == 352917