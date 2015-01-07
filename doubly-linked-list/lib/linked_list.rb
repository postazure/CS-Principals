class LinkedList
  def initialize(value)
    @head = Node.new(value)
    @tail = @head
  end

  def push(value)
    new_node = Node.new(value)
    @tail.next_node = new_node
    @tail = new_node
  end

  def unshift(value)
    new_node = Node.new(value)
    new_node.next_node = @head
    @head.prev_node = new_node
    @head = new_node
  end

  def find(value, node = @head)
    return node if node.value == value
    find(value, node.next_node)
  end

  def to_s(current_node = @head, output = "")
    return output if current_node.nil?
    output = output + "#{current_node.value}#{(", " unless current_node.next_node.nil?)}"
    to_s(current_node.next_node, output)
  end

  def length(node = @head, counter = 0)
    return counter if node.nil?
    length(node.next_node, counter + 1)
  end
end
