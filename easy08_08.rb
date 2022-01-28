# Double Char (Part 2)
# Write a method that takes a string, and returns a new string in which every consonant character is doubled. Vowels (a,e,i,o,u), digits, punctuation, and whitespace should not be doubled.

# Examples:

# Copy Code
# double_consonants('String') == "SSttrrinngg"
# double_consonants("Hello-World!") == "HHellllo-WWorrlldd!"
# double_consonants("July 4th") == "JJullyy 4tthh"
# double_consonants('') == ""

VOWELS = %w(a e i o u)
LETTERS = ('A'..'Z').to_a + ('a'..'z').to_a

def double_consonants(string)
  results = []
  counter = 0
  until counter == string.size
    if LETTERS.include?(string[counter])
      VOWELS.include?(string[counter]) ? results << string[counter] : results << (string[counter] * 2)
    else
      results << string[counter]
    end
    counter += 1
  end
  results.join
end

p double_consonants('String') == "SSttrrinngg"
p double_consonants("Hello-World!") == "HHellllo-WWorrlldd!"
p double_consonants("July 4th") == "JJullyy 4tthh"
p double_consonants('') == ""
