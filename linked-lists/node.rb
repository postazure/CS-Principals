class Node
  attr_accessor :value, :next_node
  def initialize(value)
    @value = value
  end

  def to_s
    print @value
    print " > " unless next_node.nil?
    @next_node.to_s
    puts
  end
end
