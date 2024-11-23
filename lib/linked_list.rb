require_relative "node"

class LinkedList
  def initialize
    @list = []
  end

  attr_accessor :list

  def append(value)
    node = Node.new
    node.value = value
    node.next_node = @list.size + 1
    @list.push(node)
    # should update @next node of previous node?
  end

  def prepend(value)
    node = Node.new
    node.value = value
    @list.unshift(node)
    # should update @next node of self?
  end

  def size
    @list.size
  end

  def head
    @list[0]
  end

  def tail
    @list[-1]
  end

  def at(index)
    @list[index]
  end

  def pop
    @list.pop
  end
end

list = LinkedList.new
list.append("test")
list.prepend("prepend test")
p list
