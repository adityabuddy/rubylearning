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
