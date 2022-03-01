# Grade book
# Write a method that determines the mean (average) of the three scores passed to it, and returns the letter value associated with that grade.

# Numerical Score Letter	Grade
# 90 <= score <= 100	'A'
# 80 <= score < 90	'B'
# 70 <= score < 80	'C'
# 60 <= score < 70	'D'
# 0 <= score < 60	'F'
# Tested values are all between 0 and 100. There is no need to check for negative values or values greater than 100.

# Example:

# Copy Code
# get_grade(95, 90, 93) == "A"
# get_grade(50, 50, 95) == "D"

def grade(int)
  case
  when (90..100).include?(int)
    'A'
  when (80..89).include?(int)
    'B'
  when (70..79).include?(int)
    'C'
  when (60..69).include?(int)
    'D'
  else
    'F'
  end
end
  
def get_grade(gr1, gr2, gr3)
  grade((gr1 + gr2 + gr3)/3)
end

p get_grade(95, 90, 93) == "A"
p get_grade(50, 50, 95) == "D"
