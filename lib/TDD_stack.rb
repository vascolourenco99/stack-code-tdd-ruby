# frozen_string_literal: true

class Stack
  attr_reader :first, :number

  def initialize
    @first = nil
    @number = 0
  end

  def size
    @number
  end

  def empty
    return true if @number.size.zero?
  end

  def push(item)
    old_first = @first
    @first = {
      item: item,
      next: old_first
    }
    @number += 1
  end

  def pop
    item = @first[:item]
    @first = @first[:next]
    @number -= 1
    item
  end

  def peek
    @first[:item]
  end
end
