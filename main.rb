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

p test.entries

p 'get'
p test.get('elephant')
p test.get('lion')
p test.get('cat')

p 'has?'
p test.has?('dog')
p test.has?('carrot')
p test.has?('cat')

p 'keys'
p test.keys

p 'values'
p test.values

p 'length'
p test
p test.length
p test.remove('elephant')
p 'length'
p test
p test.length
p 'remove'
p test.remove('frog')
p test.remove('cat')

p 'length'
p test.length

p 'all'
p test.entries

p 'clear'
p test.clear

p test
