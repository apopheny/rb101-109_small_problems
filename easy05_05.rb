# Clean up the words

# Given a string that consists of some words (all lowercased) and an assortment of non-alphabetic characters, write a method that returns that string with all of the non-alphabetic characters replaced by spaces. If one or more non-alphabetic characters occur in a row, you should only have one space in the result (the result should never have consecutive spaces).

# Examples:

# cleanup("---what's my +*& line?") == ' what s my line '

LETTERS = ('A'..'Z').to_a + ('a'..'z').to_a

def cleanup(string)

  repeated_spaces = string.split.map do |substring|
    substring.each_char do |char|
      LETTERS.include?(char) ? char : substring[char] = ' '
    end
  end

  repeated_spaces = repeated_spaces.join(' ')

  while repeated_spaces.include?('  ')
    repeated_spaces.gsub!('  ', ' ')
  end

  repeated_spaces
end

p cleanup("---what's my +*& line?")  == ' what s my line '
