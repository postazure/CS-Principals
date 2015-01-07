class LinkedList
  def initialize(value)
    @head = Node.new(value)
    @tail = @head
  end

  def to_s(current_node = @head)
    print "#{current_node.value}" + (current_node.next_node.nil? ? "\n" : ", ")
    to_s(current_node.next_node) unless current_node.next_node.nil?
  end



  def push(value)
    new_node = Node.new(value)
    @tail.next_node = new_node
    @tail = new_node
  end

  def test_output
    @testing_output = []
    test_output_cycle(@head)
    @testing_output.join.strip
  end

  private
  def test_output_cycle(current_node)
    @testing_output << "#{current_node.value}" + (current_node.next_node.nil? ? "\n" : ", ")
    test_output_cycle(current_node.next_node) unless current_node.next_node.nil?
  end
end
