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
end

list = LinkedList.new
list.append("test")
list.append("second")
list.append("third")
p list
