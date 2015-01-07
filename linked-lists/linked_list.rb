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

  def delete(value)
    before_node = find_prev_obj(value)

    if before_node.nil?
      swap = @head.next_node
      @head.next_node = nil
      @head = swap
    else
      before_node.next_node = before_node.next_node.next_node
    end
  end

  def insert_after(find_node_value, new_node_value)
    existing_nodes = find_obj(find_node_value)
    return false if existing_nodes.empty?
    existing_nodes.each do |existing_node|
      if existing_node == @tail
        push(new_node_value)
      else
        old_next = existing_node.next_node
        new_next = Node.new(new_node_value)
        existing_node.next_node = new_next
        new_next.next_node = old_next
      end
    end
  end

  def exist?(find_value, current_node = @head)
    found_array = find_obj(find_value)
    !found_array.empty?
  end

  def to_s(node = @head)
    print "#{node.value}" + (node.next_node.nil? ? "\n" : " > ")
    to_s(node.next_node) unless node.next_node.nil?
  end

  def length(counter = 0, node = @head)
    return counter if node.nil?
    length(counter + 1, node.next_node)
  end

  def reverse(node = @head)
    if node.next_node.nil?
      @head = node
      return
    end
    reverse(node.next_node)
    node.next_node.next_node = node
    node.next_node = nil
    @tail = node
  end

  private


    def pop_cycle(current_node, previous_node = current_node)
      if current_node.next_node.nil?
        return previous_node
      else
        pop_cycle(current_node.next_node, current_node)
      end
    end

    def find_obj(find_value, current_node = @head, found_nodes = [])
      if !current_node.nil?
        if find_value == current_node.value
          found_nodes.push(current_node)
        else
          return find_obj(find_value, current_node.next_node, found_nodes)
        end
      end
      found_nodes
    end

    def find_prev_obj(find_value, current_node = @head)
      return nil if @head.value == find_value
      return current_node if current_node.next_node.value == find_value
      find_prev_obj(find_value, current_node.next_node)
    end

end
