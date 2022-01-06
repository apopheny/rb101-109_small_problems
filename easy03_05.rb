# Squaring an Argument
# Using the multiply method from the "Multiplying Two Numbers" problem, write a method that computes the square of its argument (the square is the result of multiplying a number by itself).

# Example:

# Copy Code
# square(5) == 25
# square(-8) == 64

def multiply(num1, num2)
  num1 * num2
end

def square(num1)
  multiply(num1, num1)
end

def exponent(num1, power)
  if power == 0
    output = 1
  elsif power == 1
    output = num1
  elsif power == 2
    output = square(num1)
  else power >= 3
    power -= 2
    output = square(num1)
    power.times do
      output = multiply(num1, output)
    end
  end
  output
end
p square(5) == 25
p square(-8) == 64
p exponent(3, 4) == 81

# Further Exploration
# What if we wanted to generalize this method to a "power to the n" type method: cubed, to the 4th power, to the 5th, etc. How would we go about doing so while still using the multiply method?