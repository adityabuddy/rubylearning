# Find the last box of a list.
list = [1, 2, 3, 4, 5]
list.last
puts list.last


#  Find the last but one box of a list
list = [1, 2, 3, 4, 5]
puts list[-2]   

# Find the K'th element of a list.
list = [1, 2, 3, 4, 5]
k = 3
puts list[k - 1]

# Find the number of elements of a list.
list = [1, 2, 3, 4, 5]
puts list.length

# Reverse a list.
list = [1, 2, 3, 4, 5]
puts list.reverse


# Find out whether a list is a palindrome.
list = [1, 2, 3, 2, 1]
puts list == list.reverse

# Flatten a nested list structure.
list = [1, [2, [3, 4]], 5]
puts list.flatten

# Eliminate consecutive duplicates of list elements.
list = [1, 1, 2, 2, 3, 3, 3, 4, 4, 5]
puts list.chunk_while { |a, b| a == b }.map(&:first)

# Pack consecutive duplicates of list elements into sublists.
list = [1, 1, 2, 2, 3, 3, 3, 4, 4, 5]
puts list.chunk_while { |a, b| a == b }.to_a

# Run-length encoding of a list.
list = [1, 1, 2, 2, 3, 3, 3, 4, 4, 5]
encoded = list.chunk_while { |a, b| a == b }.map { |chunk| [chunk.size, chunk.first] }
puts encoded

# Modified run-length encoding.
list = [1, 1, 2, 2, 3, 3, 3, 4, 4, 5]
modified_encoded = list.chunk_while { |a, b| a == b }.map do |chunk|
  chunk.size > 1 ? [chunk.size, chunk.first] : chunk.first
end
puts modified_encoded

# Decode a run-length encoded list.
encoded = [[2, 1], [2, 2], [3, 3], 4, [2, 4], 5]
decoded = encoded.flat_map do |item|
  item.is_a?(Array) ? [item[1]] * item[0] : [item]
end
puts decoded

# Duplicate the elements of a list.
list = [1, 2, 3, 4, 5]
duplicated = list.flat_map { |item| [item, item] }
puts duplicated


# Replicate the elements of a list a given number of times.
list = [1, 2, 3, 4, 5]
n = 3
replicated = list.flat_map { |item| [item] * n }
puts replicated

# Drop every N'th element from a list.
list = [1, 2, 3, 4, 5, 6, 7, 8, 9]
n = 3
dropped = list.each_with_index.reject { |_, index| (index + 1) % n == 0 }.map(&:first)
puts dropped

# Split a list into two parts; the length of the first part is given.
list = [1, 2, 3, 4, 5]
n = 3
first_part = list.take(n)
second_part = list.drop(n)
puts first_part
puts second_part    

# Extract a slice from a list.
list = [1, 2, 3, 4, 5]
i = 2
k = 4
slice = list[i - 1..k - 1]
puts slice

# Rotate a list N places to the left.
list = [1, 2, 3, 4, 5]
n = 2
rotated = list.rotate(n)
puts rotated

# Remove the K'th element from a list.
list = [1, 2, 3, 4, 5]
k = 3
removed = list.each_with_index.reject { |_, index| index == k - 1 }.map(&:first)
puts removed

# Insert an element at a given position into a list.
list = [1, 2, 3, 4, 5]
list.insert(2, 99)
puts list

# Create a list containing all integers within a given range.
range_list = (4..9).to_a
puts range_list

# Extract a given number of randomly selected elements from a list.
list = [1, 2, 3, 4, 5]
n = 3
random_elements = list.sample(n)
puts random_elements

# Lotto: Draw N different random numbers from the set 1..M.
m = 49
n = 6
lotto_numbers = (1..m).to_a.sample(n)
puts lotto_numbers

# Generate a random permutation of the elements of a list.
list = [1, 2, 3, 4, 5]
permutation = list.shuffle
puts permutation

# Generate the combinations of K distinct objects chosen from the N elements of a list.
list = [1, 2, 3, 4, 5]
k = 3
combinations = list.combination(k).to_a
puts combinations

# sort a list of lists according to the length of sublists.
list_of_lists = [[1, 2, 3], [4, 5], [6], [7, 8, 9, 10], [11, 12]]
sorted_by_length = list_of_lists.sort_by { |sublist| sublist.length }
puts sorted_by_length

# sort a list of lists according to the frequency of length of sublists.
list_of_lists = [[1, 2, 3], [4, 5], [6], [7, 8, 9, 10], [11, 12], [13], [14, 15, 16]]
length_frequency = list_of_lists.group_by { |sublist| sublist.length }
sorted_by_frequency = list_of_lists.sort_by { |sublist| length_frequency[sublist.length].size }
puts sorted_by_frequency