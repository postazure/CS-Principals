require_relative "./lib/node"
require_relative "./lib/linked_list"

words = LinkedList.new("hello")
words.push("b")
p words.test_output
# puts words.to_s


def unshift(value)
  new_node = Node.new(value)
  new_node.next_node = @head
  @head.prev_node = new_node
  @head = new_node
end
