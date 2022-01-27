# fizzbuzz
# Write a method that takes two arguments: the first is the starting number, and the second is the ending number. Print out all numbers between the two numbers, except if a number is divisible by 3, print "Fizz", if a number is divisible by 5, print "Buzz", and finally if a number is divisible by 3 and 5, print "FizzBuzz".

# Example:

# Copy Code
# fizzbuzz(1, 15) # -> 1, 2, Fizz, 4, Buzz, Fizz, 7, 8, Fizz, Buzz, 11, Fizz, 13, 14, FizzBuzz

def fizzbuzz(int1, int2)
  result = (int1..int2).to_a.map do |int|
     if int % 3 == 0 
       int % 5 == 0 ? 'FizzBuzz' : 'Fizz'
     elsif int % 5 == 0
       'Buzz'
     else
       int
     end
   end
   puts result.join(", ")
 end
 
 fizzbuzz(1, 15) # -> 1, 2, Fizz, 4, Buzz, Fizz, 7, 8, Fizz, Buzz, 11, Fizz, 13, 14, FizzBuzz
 