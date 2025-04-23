# frozen_string_literal: true

# Node defines a node in the
# LinkedList class, which is
# ultimately used for Hashmaps.
# It contains the data in the 
# key-value pair and points to
# the next node.
#
# @example Create a new Node
# node = Node.new
#
class Node
  attr_accessor :key, :value, :next_node

  def initialize(key = nil, value = nil, next_node = nil)
    @key = key
    @value = value
    @next_node = next_node
  end
end
