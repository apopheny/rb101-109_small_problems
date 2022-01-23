# Alphabetical Numbers

# Write a method that takes an Array of Integers between 0 and 19, and returns an Array of those Integers sorted based on the English words for each number:

# zero, one, two, three, four, five, six, seven, eight, nine, ten, eleven, twelve, thirteen, fourteen, fifteen, sixteen, seventeen, eighteen, nineteen

# Examples:

# alphabetic_number_sort((0..19).to_a) == [
#   8, 18, 11, 15, 5, 4, 14, 9, 19, 1, 7, 17,
#   6, 16, 10, 13, 3, 12, 2, 0
# ]e

WORD_ARRAY = %w(zero one two three four five six seven eight nine ten eleven twelve thirteen fourteen fifteen sixteen seventeen eighteen nineteen)  # ["eight", "eighteen", "eleven", "fifteen", "five", "four", "fourteen", "nine", "nineteen", "one", "seven", "seventeen", "six", "sixteen", "ten", "thirteen", "three", "twelve", "two", "zero"]

# def alphabetic_number_sort(arr)
#   arr.sort_by do |integer|
#       WORD_ARRAY[integer]
#   end
# # The sort_by method uses the caller to generate hash keys with the blocks as the corresponding values, and then sorts based on the values,  returning the keys
# end

p alphabetic_number_sort((0..19).to_a) == [
  8, 18, 11, 15, 5, 4, 14, 9, 19, 1, 7, 17,
  6, 16, 10, 13, 3, 12, 2, 0
]