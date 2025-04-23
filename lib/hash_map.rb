# frozen_string_literal: true

require_relative 'linked_list'

# For implementing Hash maps in
# Ruby, this class contains the methods
# for creating hash maps.
#
# @example Create a new HashMap
# map = HashMap.new
#
class HashMap
  attr_accessor :load_factor, :capacity, :buckets

  def initialize(load_factor = 0.75, capacity = 16)
    @load_factor = load_factor
    @capacity = capacity
    @buckets = Array.new(capacity)
  end

  def hash(key)
    hash_code = 0
    prime_number = 31
       
    key.each_char { |char| hash_code = prime_number * hash_code + char.ord }
       
    hash_code
  end

  def set(key, value)
    hash_code = hash(key)
    index = hash_code % @capacity
    raise IndexError if index.negative? || index >= @buckets.length

    @buckets[index] = LinkedList.new if buckets[index].nil?
    @buckets[index].append(key, value)  
  end
 
end
