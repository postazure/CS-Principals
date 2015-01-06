class LinkedList
  def initialize value
    @head = Node.new(value)
    @tail = @head
  end

  def push(value)
    @tail.next_node = Node.new(value)
    @tail = @tail.next_node
  end

  def pop
    old_tail = @tail
    @head = pop_cycle(@head)
    old_tail.value
  end

  def pop_cycle(current_node, previous_node = current_node)
    if current_node.next_node.nil?
      return previous_node
    else
      pop_cycle(current_node.next_node, current_node)
    end
  end

  def unshift(value)
    new_head = Node.new(value)
    new_head.next_node = @head
    @head = new_head
  end

  def shift
    old_head = @head
    @head = @head.next_node
    old_head.value
  end

  def to_s(node = @head)
    print "#{node.value}" + (node.next_node.nil? ? "\n" : " > ")
    to_s(node.next_node) unless node.next_node.nil?
  end
end
