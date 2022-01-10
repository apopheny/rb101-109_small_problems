# Multiples of 3 and 5

# Write a method that searches for all multiples of 3 or 5 that lie between 1 and some other number, and then computes the sum of those multiples. For instance, if the supplied number is 20, the result should be 98 (3 + 5 + 6 + 9 + 10 + 12 + 15 + 18 + 20).

# You may assume that the number passed in is an integer greater than 1.

# Examples

# multisum(3) == 3
# multisum(5) == 8
# multisum(10) == 33
# multisum(1000) == 234168

def allthrees(int)
  output = []
  loop do
    output << (int * 3)
    int -= 1
    break if int <= 0
  end
  output
end

def allfives(int)
  output = []
  loop do
    output << (int * 5)
    int -= 1
    break if int <= 0
  end
  output
end

def multisum(int)
  mult3 = (int / 3)
  mult5 = (int / 5)
  all_multiples = []
  all_multiples << allthrees(mult3)
  all_multiples << allfives(mult5)
  all_multiples.flatten.uniq.sum
end

p multisum(3) == 3
p multisum(5) == 8
p multisum(10) == 33
p multisum(1000) == 234168


# Further Exploration

# Investigate Enumerable.inject (also known as Enumerable.reduce), How might this method be useful in solving this problem? (Note that Enumerable methods are available when working with Arrays.) Try writing such a solution. Which is clearer? Which is more succinct?