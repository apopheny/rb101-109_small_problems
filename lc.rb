# Write a function that will check if two given characters are the same case.

#     If any of characters is not a letter, return -1
#     If both characters are the same case, return 1
#     If both characters are letters and not the same case, return 0

# Examples

# 'a' and 'g' returns 1

# 'A' and 'C' returns 1

# 'b' and 'G' returns 0

# 'B' and 'g' returns 0

# '0' and '?' returns -1




def same_case(obj1, obj2)
 if obj1.class != String || obj2.class != String 
  return -1
 elsif obj1.downcase == obj1 ? case1 = 'downcase' : case1 = 'upcase'
 elsif obj2.downcase == obj2 ? case2 = 'downcase' : case2 = 'upcase'
 end
 case1 == case2 ? 1 : 0
end

p same_case('a', 'g') == 1
p same_case('A', 'C') == 1
p same_case('b', 'G') == 0
p same_case(0, '?') == -1
