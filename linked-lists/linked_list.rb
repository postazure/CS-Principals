class LinkedList
  def initialize value
    @head = Node.new(value)
    @tail = @head
  end

  def push value
    @tail.next_node = Node.new(value)
    @tail = @tail.next_node
  end

  def to_s
    @head.to_s
  end
end
