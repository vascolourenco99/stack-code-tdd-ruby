# frozen_string_literal: true

require './lib/TDD_stack'

RSpec.describe Stack do
  describe 'inital test' do
    it 'inialize class' do
      new_stack = Stack.new

      expect(new_stack).to eq(new_stack)
    end
  end

  describe 'push' do
    it 'add to stack' do
      new_stack = Stack.new
      new_stack.push('ola')
    end

    it 'push to stack incremente size' do
      new_stack = Stack.new
      new_stack.push('ola')
      expect(new_stack.size).to eq(1)
    end
  end

  describe 'pop' do
    it 'can pop form non empty stack' do
      new_stack = Stack.new
      new_stack.push('ola')
      new_stack.pop
    end

    it 'pop to stack decrement size' do
      new_stack = Stack.new
      new_stack.push('ola')
      new_stack.pop
      expect(new_stack.size).to eq(0)
    end

    it 'can pop push element' do
      new_stack = Stack.new
      element = 'new element'

      new_stack.push(element)
      popped_element = new_stack.pop
      expect(element).to eq(popped_element)
    end

    it 'can pop and push to elements' do
      new_stack = Stack.new
      element1 = '1 element'
      element2 = '2 element'

      new_stack.push(element1)
      new_stack.push(element2)

      expect(element2).to eq(new_stack.pop)
      expect(element1).to eq(new_stack.pop)
    end
  end

  describe 'size' do
    it 'new stack should be zero' do
      new_stack = Stack.new
      expect(new_stack.size).to be(0)
    end
  end

  describe 'empty' do
    it 'should show if it is empty' do
      new_stack = Stack.new
      expect(new_stack.empty).to be nil
    end
  end

  describe 'peek' do
    it 'can peek pushed element' do
      new_stack = Stack.new
      element = 'element 1'

      new_stack.push(element)
      peeked_element = new_stack.peek

      expect(element).to eq(peeked_element)
    end
  end
end
