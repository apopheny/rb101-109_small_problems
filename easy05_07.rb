# Letter Counter (Part 2)
# Modify the word_sizes method from the previous exercise to exclude non-letters when determining word size. For instance, the length of "it's" is 3, not 4.

# Examples

# Copy Code
# word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 2 }
# word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 3 }
# word_sizes("What's up doc?") == { 5 => 1, 2 => 1, 3 => 1 }
# word_sizes('') == {}

LETTERS = ('A'..'Z').to_a + ('a'..'z').to_a

def word_sizes(string)
  
  substrings = string.split.map do |substring|
    substring.each_char do |char|
      LETTERS.include?(char) ? char : substring.gsub!(char, "")
    end
  end
  
  count = Hash.new(0)

  substrings.each { |substring| count[substring.size] += 1 }
  
  count
end

p word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 2 }
p word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 3 }
p word_sizes("What's up doc?") == { 5 => 1, 2 => 1, 3 => 1 }
p word_sizes('') == {}
