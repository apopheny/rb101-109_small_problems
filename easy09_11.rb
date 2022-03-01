# Group Anagrams
# Given the array...

# Copy Code
# words =  ['demo', 'none', 'tied', 'evil', 'dome', 'mode', 'live',
#           'fowl', 'veil', 'wolf', 'diet', 'vile', 'edit', 'tide',
#           'flow', 'neon']
# Write a program that prints out groups of words that are anagrams. Anagrams are words that have the same exact letters in them but in a different order. Your output should look something like this:

# Copy Code
# ["demo", "dome", "mode"]
# ["neon", "none"]

words =  ['demo', 'none', 'tied', 'evil', 'dome', 'mode', 'live', 'fowl', 'veil', 'wolf', 'diet', 'vile', 'edit', 'tide', 'flow', 'neon']

match_arr = words.map { |word| word.chars.sort }.uniq
result_hash = Hash.new

match_arr.each do |pattern|
  words.each do |word|
  if pattern == (word.chars.sort)
    if !result_hash.keys.include?(pattern)
      result_hash[pattern] = word + ' '
    else
      result_hash[pattern] << word + ' '
    end
  end
end
end
result_array = result_hash.values.map { |palindromes| palindromes.split}

p result_array
