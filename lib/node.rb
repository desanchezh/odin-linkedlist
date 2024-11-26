class Node
  def initialize(value = nil)
    @value = value
    @next_node = nil
  end

  attr_accessor :value, :next_node
end
