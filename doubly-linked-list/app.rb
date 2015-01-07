require_relative "./lib/node"
require_relative "./lib/linked_list"

words = LinkedList.new("hello")
words.push("b")
p words.test_output
# puts words.to_s
