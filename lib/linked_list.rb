# frozen_string_literal: true

require_relative 'node'

# for implementing LinkedLists in
# LinkedList contains the methods
# Ruby.
#
# @example Create a new LinkedList
# list = LinkedList.new
#
class LinkedList
  def initialize
    @head = nil
  end

  def append(value)
    if @head.nil?
      @head = Node.new(value)
    else
      current = @head
      current = current.next_node until current.next_node.nil?
      current.next_node = Node.new(value)
    end
  end

  def prepend(value)
    if @head.nil?
      @head = Node.new(value)
    else
      old_head = @head
      @head = Node.new(value, old_head)
    end
  end

  def size
    size = 0
    return size if @head.nil?

    current = @head
    until current.next_node.nil?
      size += 1
      current = current.next_node
    end
    size + 1
  end

  def head
    @head.value
  end

  def tail
    return nil if @head.nil?

    current = @head
    current = current.next_node until current.next_node.nil?
    current.value
  end

  def at(index)
    current_index = 0
    return nil if @head.nil?

    current = @head
    until index == current_index
      current = current.next_node
      current_index += 1
    end
    current.value
  end

  def pop
    return nil if @head.nil?

    current = @head
    previous = current
    until current.next_node.nil?
      previous = current
      current = current.next_node
    end
    previous.next_node = nil
  end

  def contains?(value)
    traverse do |current, _|
      return true if current.value == value
    end
    false
  end

  def find(value)
    traverse do |current, index|
      return index if current.value == value
    end
    nil
  end

  def insert_at(value, index)
    return prepend(value) if index.zero?

    return append(value) if index > size

    current_index = 0
    current = @head
    until current.next_node.nil? || current_index == index
      current_index += 1
      previous = current
      current = current.next_node
    end
    previous.next_node = Node.new(value, current)
  end

  def remove_at(index)
    current_index = 0
    current = @head
    until current.next_node.nil? || current_index == index
      current_index += 1
      previous = current
      current = current.next_node
    end
    previous.next_node = current.next_node
  end

  def to_s
    list = ''
    current = @head
    until current.next_node.nil?
      list += "( #{current.value} ) -> "
      current = current.next_node
    end
    list += "( #{current.value} ) -> nil" if current.next_node.nil?
    list
  end

  private

  def traverse
    return nil if @head.nil?

    current = @head
    index = 0
    until current.nil?
      yield(current, index) if block_given?
      current = current.next_node
      index += 1
    end
  end
end
