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

  def xdelete(delete_value, current_node = @head, previous_node = current_node)
    if !current_node.next_node.nil?
      if current_node.value == delete_value
        if @head == current_node
          @head = current_node.next_node
        else
          previous_node.next_node = current_node.next_node
        end
      end
      xdelete(delete_value, current_node.next_node, current_node)
    end
  end

  def insert_after(find_node_value, new_node_value)
    find_obj(find_node_value).each do |existing_node|
      old_next = existing_node.next_node
      new_next = Node.new(new_node_value)
      existing_node.next_node = new_next
      new_next.next_node = old_next
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

  private
    def pop_cycle(current_node, previous_node = current_node)
      if current_node.next_node.nil?
        return previous_node
      else
        pop_cycle(current_node.next_node, current_node)
      end
    end

    def find_obj(find_value, current_node = @head, found_nodes = [])
      if !current_node.next_node.nil?
        if find_value == current_node.value
          found_nodes.push(current_node)
        else
          return find_obj(find_value, current_node.next_node, found_nodes)
        end
      end
      found_nodes
    end
end
