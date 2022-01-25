
# Staggered Caps (Part 1)

# Write a method that takes a String as an argument, and returns a new String that contains the original value using a staggered capitalization scheme in which every other character is capitalized, and the remaining characters are lowercase. Characters that are not letters should not be changed, but count as characters when switching between upper and lowercase.

# Example:

# staggered_case('I Love Launch School!')# == 'I LoVe lAuNcH ScHoOl!'
# staggered_case('ALL_CAPS') == 'AlL_CaPs'
# staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 NuMbErS'

LETTERS = ('A'..'Z').to_a + ('a'..'z').to_a

def staggered_case(string)
  result = []
  string = string.chars
  string.each_with_index do |char, index|
    
    if LETTERS.include?(char) && index.odd? == false
      result << char.upcase
    elsif LETTERS.include?(char) && index.odd?
      result << char.downcase
    else
      result << char
    end
  end
  result.join
end

p staggered_case('I Love Launch School!') == 'I LoVe lAuNcH ScHoOl!'
p staggered_case('ALL_CAPS') == 'AlL_CaPs'
p staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 NuMbErS'
