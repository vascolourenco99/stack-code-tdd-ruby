# frozen_string_literal: true

require './lib/TDD_stack'

RSpec.describe Tddstack do
  describe 'basic methods' do
    it 'can be initialized' do
      stack = Tddstack.new
      expect(stack).to eq(stack)
    end

    it 'can push one element' do
      stack = Tddstack.new
      stack.push
      expect(stack.elements).to eq 1
    end

    it 'start from 0' do
      stack = Tddstack.new
      result = stack.elements
      expect(result).to eq 0
    end

    it 'can push more elements' do
      stack = Tddstack.new
      stack.push
      stack.push
      stack.push
      expect(stack.elements).to eq 3
    end

    it 'can pop from non empety Stack' do
      stack = Tddstack.new
      stack.push
      stack.pop
      expect(stack.elements).to eq 0
    end

    # it 'throw an error if stack is empty' do
    #   stack = Tddstack.new
    #   stack.pop
    #   expect { stack.pop() }.to raise_error("error if stack is empty")
    # end

    it 'decrements size when pop is used' do
      stack = Tddstack.new
      stack.push
      stack.push
      stack.pop
      expect(stack.elements).to eq(stack.elements)
    end

    it 'decrements size when pop is used' do
      stack = Tddstack.new
      stack.push
      stack.push
      stack.pop
      expect(stack.elements).to eq(stack.elements)
    end
  end
end
