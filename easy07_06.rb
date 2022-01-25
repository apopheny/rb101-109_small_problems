# Staggered Caps (Part 2)

# Modify the method from the previous exercise so it ignores non-alphabetic characters when determining whether it should uppercase or lowercase each letter. The non-alphabetic characters should still be included in the return value; they just don't count when toggling the desired case.

# Example:

# staggered_case('I Love Launch School!') == 'I lOvE lAuNcH sChOoL!'
# staggered_case('ALL CAPS') == 'AlL cApS'
# staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 nUmBeRs'

LETTERS = ('A'..'Z').to_a + ('a'..'z').to_a

def staggered_case(string)
  result = []
  string = string.chars
  up_or_down = 1
  string.each do |char|
    if LETTERS.include?(char) && up_or_down.odd?
      result << char.upcase
      up_or_down += 1
    elsif LETTERS.include?(char) && up_or_down.even?
      result << char.downcase
      up_or_down += 1
    else
      result << char
    end    
  end
  result.join
end

p staggered_case('I Love Launch School!') == 'I lOvE lAuNcH sChOoL!'
p staggered_case('ALL CAPS') == 'AlL cApS'
p staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 nUmBeRs'