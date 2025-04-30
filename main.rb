# frozen_string_literal: true

require_relative 'lib/hash_map'

# main contains the main execution
# for running my HashMaps project.
#

test = HashMap.new(0.75, 16)

test.set('apple', 'red')
test.set('banana', 'yellow')
test.set('carrot', 'orange')
test.set('dog', 'brown')
test.set('elephant', 'gray')
test.set('frog', 'green')
test.set('grape', 'purple')
test.set('hat', 'black')
test.set('ice cream', 'white')
test.set('jacket', 'blue')
test.set('kite', 'pink')
test.set('lion', 'golden')

p 'all'
p test.entries
p "length; #{test.length}" # 12

p 'before grow'
p "load_factor: #{test.load_factor}"
p "capacity: #{test.capacity}"
p "length: #{test.length}"

test.set('apple', 'green')

p 'test update'
p "load_factor: #{test.load_factor}"
p "capacity: #{test.capacity}"
p "length: #{test.length}"
p test.entries

p 'before grow'
p "load_factor: #{test.load_factor}"
p "capacity: #{test.capacity}"
p "length: #{test.length}"
test.set('moon', 'silver')
p 'after grow'
p "load_factor: #{test.load_factor}"
p "capacity: #{test.capacity}"
p "length: #{test.length}"
p test.entries
