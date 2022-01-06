def oddities(arr)
  index_position = 0
  skipped_index = []
  loop do
    skipped_index << arr[index_position]
    index_position += 2
    break if index_position >= arr.length
  end
  arr.empty? ? [] : skipped_index
end

p oddities([2, 3, 4, 5, 6]) == [2, 4, 6]
p oddities([1, 2, 3, 4, 5, 6]) == [1, 3, 5]
p oddities(['abc', 'def']) == ['abc']
p oddities([123]) == [123]
p oddities([]) == []