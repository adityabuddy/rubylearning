#Truth tables for logical expressions.
def truth_table(&block)
  puts "A\tB\tResult"
  puts "---------------------"
  [true, false].each do |a|
    [true, false].each do |b|
      result = block.call(a, b)
      puts "#{a}\t#{b}\t#{result}"
    end
  end
end

puts "Truth table for A AND B:"
truth_table do |a, b|
  a && b
end

puts "\nTruth table for A OR B:"
truth_table do |a, b|
  a || b
end

puts "\nTruth table for A XOR B:"
truth_table do |a, b|
  a ^ b
end

#huffman coding
