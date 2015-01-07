class LinkedList
  def initialize(value)
    @head = Node.new(value)
    @tail = @head
  end

  def push(value)
    new_node = Node.new(value)
    @tail.next_node = new_node
    new_node.prev_node = @tail
    @tail = new_node
  end

  def unshift(value)
    new_node = Node.new(value)
    new_node.next_node = @head
    @head.prev_node = new_node
    @head = new_node
  end

  def insert_after(existing_node_value, new_node_value)
    existing_node = find(existing_node_value)
    new_node = Node.new(new_node_value)
    new_node.next_node = existing_node.next_node
    existing_node.next_node = new_node
    new_node.next_node.prev_node = new_node
  end

  def find(value, node = @head)
    return node if node.value == value
    find(value, node.next_node)
  end

  def delete(value)
    removed_node = find(value)
    removed_node_next = removed_node.next_node
    removed_node_prev = removed_node.prev_node
    if removed_node == @head || removed_node == @tail
      if removed_node == @head
        @head = removed_node.next_node
        @head.prev_node = nil
      elsif removed_node == @tail
        @tail = removed_node.prev_node
        @tail.next_node = nil
      end
    else
      removed_node.prev_node.next_node = removed_node_next
      removed_node.next_node.prev_node = removed_node_prev
    end
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
