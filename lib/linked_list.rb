require_relative "node"

class LinkedList
  def initialize
    @list = ["initial"]
  end

  attr_accessor :list

  def append(value)
    node = Node.new
    node.value = value
    @list.push(node)
    # should update @next node of previous node?
  end

  def prepend(value)
    node = Node.new
    node.value = value
    @list.unshift(node)
    # should update @next node of self?
  end
end

list = LinkedList.new
list.append("test")
list.prepend("prepend test")
p list.list[0].value
