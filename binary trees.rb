#Check whether a given expression represents a binary tree.
def istree?(tree)
  return true if tree.nil?
  return false unless tree.is_a?(Array) && tree.size == 3
  left_subtree, _, right_subtree = tree
  istree?(left_subtree) && istree?(right_subtree)
end
# Example
puts istree?([ [nil, 'a', nil], 'b', [nil, 'c', nil] ])  # true
puts istree?([ [nil, 'a'], 'b', nil ])              # false

#Construct completley balanced binary trees.
def cbal_tree(n)
    return [nil] if n == 0
    return [[nil, 'x', nil]] if n == 1

    trees = []
    (0..(n - 1) / 2).each do |left_size|
        right_size = n - 1 - left_size
        left_trees = cbal_tree(left_size)
        right_trees = cbal_tree(right_size)

        left_trees.each do |left|
            right_trees.each do |right|
                trees << [left, 'x', right]
                trees << [right, 'x', left] if left_size != right_size
            end
        end
    end
    trees
end

# Example
puts cbal_tree(4).inspect

#Symmetric binary trees.
def mirror?(tree1, tree2)
  return true if tree1.nil? && tree2.nil?
  return false if tree1.nil? || tree2.nil?
  left1, _, right1 = tree1
  left2, _, right2 = tree2
  mirror?(left1, right2) && mirror?(right1, left2)
end

def symmetric?(tree)
    return true if tree.nil?
    left_subtree, _, right_subtree = tree
    mirror?(left_subtree, right_subtree)
    end
# Example
puts symmetric?([ [nil, 'a', nil], 'b', [nil, 'a', nil] ])  # true
puts symmetric?([ [nil, 'a', nil], 'b', [nil, 'c', nil] ])  # false

#Binary search trees (dictionaries).
def bst_insert(tree, value)
    return [nil, value, nil] if tree.nil?
    left_subtree, node_value, right_subtree = tree
    if value < node_value
        left_subtree = bst_insert(left_subtree, value)
    else
        right_subtree = bst_insert(right_subtree, value)
    end
    [left_subtree, node_value, right_subtree]
    end
# Example
tree = nil
[5, 3, 8, 1, 4, 7, 9].each do |value|
    tree = bst_insert(tree, value)
end
puts tree.inspect

#Generate-and-test paradigm.
def generate_bst_permutations(values)
    return [nil] if values.empty?
    permutations = values.permutation.to_a
    trees = []
    permutations.each do |perm|
        tree = nil
        perm.each do |value|
            tree = bst_insert(tree, value)
        end
        trees << tree
    end
    trees.uniq
end
# Example
values = [2, 1, 3]
bst_trees = generate_bst_permutations(values)
puts bst_trees.inspect
#Height-balanced binary trees.
def hbal_tree_nodes(h)
    return 1 if h == 0
    return 3 if h == 1
    hbal_tree_nodes(h - 1) * (hbal_tree_nodes(h - 1) + hbal_tree_nodes(h - 2) * 2)
end
# Example
puts hbal_tree_nodes(2) 

def hbal_tree_nodes(h)
 return 1 if h == 0
 return 3 if h == 1
 hbal_tree_nodes(h-1) * (hbal_tree_nodes(h-1) + hbal_tree_nodes(h-2) * 2 )
 end
# Example
