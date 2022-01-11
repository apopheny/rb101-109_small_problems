# Running Totals
# Write a method that takes an Array of numbers, and returns an Array with the same number of elements, and each element has the running total from the original Array.

# Examples:

# Copy Code
# p running_total([14, 11, 7, 15, 20]) == [14, 25, 32, 47, 67]
# p running_total([3]) == [3]
# p running_total([2, 5, 13]) == [2, 7, 20]
# p running_total([]) == []

def running_total(arr)
  if arr.empty?
    arr
    else
      counter = 1
    while counter != arr.size
      arr[counter] = arr[counter] + arr[counter -1]
      counter += 1
    end
  end
  arr
end

p running_total([14, 11, 7, 15, 20]) == [14, 25, 32, 47, 67]
p running_total([3]) == [3]
p running_total([2, 5, 13]) == [2, 7, 20]
p running_total([]) == []