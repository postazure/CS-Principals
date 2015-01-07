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

# puts numbers.shift
# numbers.to_s
#
# puts numbers.pop
# numbers.to_s
#
# numbers.delete(50)
# numbers.to_s

# puts numbers.exist?(37)
# puts numbers.exist?(0)

words = LinkedList.new("hello")
words.push("peanut")
words.push("hat")
words.push("pepper")
words.push("yo")
# words.to_s
# words.exist?("yo")
# words.insert_after("yo", "poop")
# words.to_s
p words.delete("pepper")
words.to_s
puts words.length

words.reverse
puts
puts words.to_s
