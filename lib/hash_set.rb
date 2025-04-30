# frozen_string_literal: true

require_relative 'linked_list'

# For implementing Hash Sets in
# Ruby, this class contains the methods
# for creating a Set.
#
# @example Create a new HashSet
# set = HashSet.new
#
class HashSet
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

  def add(key)
    if has?(key)
      update(key)
    else
      grow if full_capacity?
      set_in_bucket(key)
    end
  end

  def contains?(key)
    bucket = buckets[find_bucket(key)]
    bucket&.contains?(key) ? true : false
  end

  def remove(key)
    bucket = buckets[find_bucket(key)]
    bucket&.remove(key)
  end

  def size
    count = 0
    buckets.each { |list| count += list.size unless list.nil? }
    count
  end

  def items
    result = []
    buckets.each { |list| result.concat(list.to_array) unless list.nil? }
    result
  end

  def clear
    @buckets = Array.new(capacity)
  end

  private

  def find_bucket(key)
    hash_code = hash(key)
    index = hash_code % capacity
    raise IndexError if index.negative? || index >= buckets.size

    index
  end

  def full_capacity?
    size >= capacity * load_factor
  end

  def grow
    original_data = items
    @buckets = Array.new(@capacity *= 2) # double capacity
    original_data.each { |key| set_in_bucket(key) }
  end

  def set_in_bucket(key)
    index = find_bucket(key)
    buckets[index] = LinkedList.new if buckets[index].nil?
    buckets[index].append(key, nil)
  end

  def update(key)
    bucket = buckets[find_bucket(key)]
    bucket&.update_node(key, nil)
  end
end
