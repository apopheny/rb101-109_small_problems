# Diamonds!
# Write a method that displays a 4-pointed diamond in an n x n grid, where n is an odd integer that is supplied as an argument to the method. You may assume that the argument will always be an odd integer.

# Examples

# Copy Code
# diamond(1)

# *
# Copy Code
# diamond(3)

#  *
# ***
#  *
# Copy Code
# diamond(9)

#     *
#    ***
#   *****
#  *******
# *********
#  *******
#   *****
#    ***
#     *

def diamond(int)
  descend = false
  size = 1
  int.times do
    puts " " * ((int - size)/2) + ("*" * size) + " " * ((int - size)/2)
    if size == int
      descend = true
    end
    descend == false ? size += 2 : size -= 2
  end
end

diamond(3)
diamond(9)
