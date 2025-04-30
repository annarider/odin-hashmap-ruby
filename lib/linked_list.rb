# frozen_string_literal: true

require_relative 'node'

# For implementing Hashmaps, the
# LinkedList class provides methods
# for creating a LinkedList in each
# bucket.
#
# @example Create a new LinkedList
# list = LinkedList.new
#
class LinkedList
  attr_accessor :head

  def initialize
    @head = nil
  end

  def append(key, value)
    if @head.nil?
      @head = Node.new(key, value)
    else
      current = @head
      current = current.next_node until current.next_node.nil?
      current.next_node = Node.new(key, value)
    end
  end

  def size
    count = 0
    traverse { count += 1 }
    count
  end

  def contains?(key)
    traverse do |current|
      return true if current.key == key
    end
    nil
  end

  def find(key)
    traverse do |current|
      return current if current.key == key
    end
    nil
  end

  def update_node(key, value)
    traverse do |current|
      if current.key == key
        return current.value = value
      end
    end
  end

  def remove(key)
    return nil if head.nil?

    return remove_head if head.key == key

    find_and_remove(key)
  end

  def to_array
    current = @head
    list = []
    until current.nil?
      list << [current.key, current.value]
      current = current.next_node
    end
    list
  end

  private

  def traverse
    return nil if @head.nil?

    current = @head
    until current.nil?
      yield(current) if block_given?
      current = current.next_node
    end
  end

  def remove_head
    value = head.value
    @head = head.next_node
    value
  end

  def find_and_remove(key)
    current = @head
    current = current.next_node until current.next_node.nil? || current.next_node.key == key

    return nil unless current.next_node

    value = current.next_node.value
    current.next_node = current.next_node.next_node
    value
  end
end
