require 'pry' #gem install pry

class Node
  attr_accessor :value, :next_node
  def initialize(value, next_node=nil)
    @value = value
    @next_node = next_node
  end
end


class LinkedList
  attr_accessor :head, :tail, :size
  def initialize
    @size = 0
  end

  def add(value)
    node = Node.new(value)
    return @head = @tail = node if @head.nil?
    @size += 1
    @tail.next_node = node
    @tail = node
  end

  def find(index)
    return 'Out of bounds' if index > @size
    i = 0
    current_node = @head
    until i == index
      current_node = current_node.next_node
      i += 1
    end
    current_node
  end
end


list = LinkedList.new

list.add(1)
list.add(2)
list.add(3)
list.add(4)

binding.pry