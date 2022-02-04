# Rotation (Part 3)
# If you take a number like 735291, and rotate it to the left, you get 352917. If you now keep the first digit fixed in place, and rotate the remaining digits, you get 329175. Keep the first 2 digits fixed in place and rotate again to 321759. Keep the first 3 digits fixed in place and rotate again to get 321597. Finally, keep the first 4 digits fixed in place and rotate the final 2 digits to get 321579. The resulting number is called the maximum rotation of the original number.

# Write a method that takes an integer as argument, and returns the maximum rotation of that argument. You can (and probably should) use the rotate_rightmost_digits method from the previous exercise.

# Note that you do not have to handle multiple 0s.

# Example:

# Copy Code

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

def max_rotation(int)
  counter = 0
  dup = int.dup
  loop do
    int = rotate_rightmost_digits(int, counter)
    counter -= 1
    if counter + int.to_s.size == 0 || dup.to_s.size - int.to_s.size > 0
      break
    end
  end
  if dup.to_s.size - int.to_s.size > 0
    int = max_rotation(int)
  end
  int
end

p max_rotation(735291) == 321579
p max_rotation(3) == 3
p max_rotation(35) == 53
p max_rotation(105) == 15 # the leading zero gets dropped
p max_rotation(8_703_529_146) == 7_321_609_845
