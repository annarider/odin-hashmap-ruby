# Test code for your HashSet class

require_relative 'lib/hash_set'

# Create a new HashSet instance
test_set = HashSet.new(0.75, 16)

# Add some items
test_set.add('apple')
test_set.add('banana')
test_set.add('carrot')
test_set.add('dog')
test_set.add('elephant')
test_set.add('frog')
test_set.add('grape')
test_set.add('hat')
test_set.add('ice cream')
test_set.add('jacket')
test_set.add('kite')
test_set.add('lion')

p 'all items'
p test_set.items
p "size: #{test_set.size}" # Should be 12

p 'before grow'
p "load_factor: #{test_set.load_factor}"
p "capacity: #{test_set.capacity}"
p "size: #{test_set.size}"

# Try adding an existing item (should not increase size)
test_set.add('apple')

p 'test update'
p "load_factor: #{test_set.load_factor}"
p "capacity: #{test_set.capacity}"
p "size: #{test_set.size}"
p test_set.items

p 'before grow'
p "load_factor: #{test_set.load_factor}"
p "capacity: #{test_set.capacity}"
p "size: #{test_set.size}"

# Add one more item to trigger grow
test_set.add('moon')

p 'after grow'
p "load_factor: #{test_set.load_factor}"
p "capacity: #{test_set.capacity}"
p "size: #{test_set.size}"
p test_set.items

# Test removal
p test_set.remove('apple')
p "size: #{test_set.size}"
p test_set.remove('hat')
p "size: #{test_set.size}"
p test_set.remove('truck') # Non-existent item
p "size: #{test_set.size}"
p test_set.remove('dog')
p test_set.remove('lion')
p "size: #{test_set.size}"

p 'contains?'
p test_set.contains?('elephant')
p test_set.contains?('lion') # Should be false after removal
p test_set.contains?('cat') # Non-existent item

p 'remove more'
p 'size'
p test_set.size
p test_set.remove('elephant')
p 'size'
p test_set.size
p test_set.remove('frog')
p test_set.remove('cat') # Non-existent item

p 'size'
p test_set.size

p 'clear'
p test_set.clear

# Add new items after clearing
p test_set.add('hair')
p test_set.add('flower')
p test_set.add('leaf')
p test_set.add('clip')
p "capacity: #{test_set.capacity}"
p "size: #{test_set.size}"
p test_set.add('flower') # Duplicate
p test_set.add('clip') # Duplicate

p "capacity: #{test_set.capacity}"
p "size: #{test_set.size}"
p test_set.items
