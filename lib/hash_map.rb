# frozen_string_literal: true

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
  end

  def hash(key)
    hash_code = 0
    prime_number = 31
       
    key.each_char { |char| hash_code = prime_number * hash_code + char.ord }
       
    hash_code
  end
 
end
