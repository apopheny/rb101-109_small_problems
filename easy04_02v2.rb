
# What Century is That?

# Write a method that takes a year as input and returns the century. The return value should be a string that begins with the century number, and ends with st, nd, rd, or th as appropriate for that number.

# New centuries begin in years that end with 01. So, the years 1901-2000 comprise the 20th century.

# Examples:

# century(2000) == '20th'
# century(2001) == '21st'
# century(1965) == '20th'
# century(256) == '3rd'
# century(5) == '1st'
# century(10103) == '102nd'
# century(1052) == '11th'
# century(1127) == '12th'
# century(11201) == '113th'
require 'pry'
require 'pry-byebug'

def suffix(int)
  if (int % 10 == 1) && (int % 100 != 11)
    "st"
  elsif (int % 10 == 2) && (int % 100 != 12)
    "nd"
  elsif (int % 10 == 3) && (int % 100 != 13)
    "rd"
  else
    "th"
  end
end
# 1st 11th 21st
# 2nd 12th 22nd
# 3rd 13th 23rd
# 4th 14th 24th
# 5th 15th 25th

def century(int)
(int % 100 == 0) ? (cent = (int / 100)) : (cent = ((int / 100) + 1)) 
  "#{cent.to_s + suffix(cent)}"
end

p century(2000) == '20th'
p century(2001) == '21st'
p century(1965) == '20th'
p century(256) == '3rd'
p century(5) == '1st'
p century(10103) == '102nd'
p century(1052) == '11th'
p century(1127) == '12th'
p century(11201) == '113th'