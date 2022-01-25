# Right Triangles
# Write a method that takes a positive integer, n, as an argument, and displays a right triangle whose sides each have n stars. The hypotenuse of the triangle (the diagonal side in the images below) should have one end at the lower-left of the triangle, and the other end at the upper-right.

# Examples:

# Copy Code
# triangle(5)

#     *
#    **
#   ***
#  ****
# *****
# Copy Code
# triangle(9)

#         *
#        **
#       ***
#      ****
#     *****
#    ******
#   *******
#  ********
# *********


def triangle(base)
  asterisk = 1
  space = base - 1

  loop do
    puts (" " * space) + ("*" * asterisk)
    asterisk += 1
    space -= 1
    break if asterisk > base
  end
end

triangle(5)
triangle(9)
