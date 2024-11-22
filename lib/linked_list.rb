require_relative "node"

class LinkedList
  def initialize
    @list = ["initial"]
  end

  attr_accessor :list

  def append(value)
    node = Node.new
    node.value = value
    @list.push(node.value)
  end
end

list = LinkedList.new
list.append("test")
p list.list
