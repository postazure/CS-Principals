require_relative "node"
require_relative "linked_list"

##node only
# head = Node.new(37)
# head.next_node = Node.new(50)
# head.next_node.next_node = Node.new(90)
#
# head.to_s #=> "37 > 50 > 90"

#linked list
numbers = LinkedList.new(37)
numbers.push(50)
numbers.push(99)
numbers.to_s

numbers.unshift(2)
numbers.to_s

puts numbers.shift
numbers.to_s

puts numbers.pop
numbers.to_s