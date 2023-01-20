# frozen_string_literal: true

class Tddstack
  attr_accessor :elements

  def initialize(elements = 0)
    @elements = elements
  end

  def push
    @elements += 1
  end

  def pop
    @elements -= 1
  end
end
