# frozen_string_literal: true

require_relative 'lib/hash_map'
require_relative 'test_set'

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

p test.remove('apple')
p "length: #{test.length}"
p test.remove('hat')
p "length: #{test.length}"
p test.remove('truck')
p "length: #{test.length}"
p test.remove('dog')
p test.remove('lion')
p "length: #{test.length}"

p 'get'
p test.get('elephant')
p test.get('lion')
p test.get('cat')

p 'has?'
p test.has?('dog')
p test.has?('carrot')
p test.has?('cat')

p 'remove'
p 'length'
p test
p test.length
p test.remove('elephant')
p 'length'
p test
p test.length
p test.remove('frog')
p test.remove('cat')

p 'length'
p test.length

p 'clear'
p test.clear

p test.set('hair', 'blond')
p test.set('flower', 'yellow')
p test.set('leaf', 'green')
p test.set('clip', 'gold')
p "capacity: #{test.capacity}"
p "length: #{test.length}"
p test.set('flower', 'orange')
p test.set('clip', 'silver')

p "capacity: #{test.capacity}"
p "length: #{test.length}"
p test.entries
