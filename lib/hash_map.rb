# frozen_string_literal: true

require_relative '../odin-linked-lists/lib/linked_list.rb'

# For implementing Hash maps in
# Ruby, this class contains the methods
# for creating hash maps.
#
# @example Create a new HashMap
# map = HashMap.new
#
class HashMap
  def initialize(load_factor = 0.75, capacity = 16)
    @load_factor = load_factor
    @capacity = capacity
    @buckets = []
  end

  def hash(key)
    hash_code = 0
    prime_number = 31
       
    key.each_char { |char| hash_code = prime_number * hash_code + char.ord }
       
    hash_code
  end

  def set(key, value)
    hash_value = hash_code(key)
    buckets[hash_value] = 
  end
 
end
