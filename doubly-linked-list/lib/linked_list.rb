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


  def to_s
    @to_s = ""
    output_cycle(@head)
    @to_s
  end

  private
  def output_cycle(current_node)
    @to_s = @to_s + "#{current_node.value}#{(", " unless current_node.next_node.nil?)}"
    output_cycle(current_node.next_node) unless current_node.next_node.nil?
  end
end
