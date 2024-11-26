require_relative "node"

class LinkedList
  def initialize
    @head = nil
    @tail = nil
  end

  attr_accessor :head, :tail

  def append(value)
    node = Node.new(value)
    if @head.nil?
      @head = node
      @tail = node
    else
      @tail.next_node = node
      @tail = node
    end
  end

  def prepend(value)
    node = Node.new(value)
    if @head.nil?
      @head = node
      @tail = node
    else
      node.next_node = @head
      @head = node
    end
  end

  def size
    current = @head
    count = 0
    until current.nil?
      count += 1
      current = current.next_node
    end
    count
  end

  def at(index)
    current = head
    index.times do
      current = current.next_node
    end
    current
  end

  def pop
    tail_index = size - 1
    @tail = at(tail_index - 1)
    @tail.next_node = nil
  end
end

list = LinkedList.new
list.append("test")
list.append("second")
list.append("third")
list.prepend("prepend test")
p list
list.pop
p list
