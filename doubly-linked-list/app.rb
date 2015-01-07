require_relative "./lib/node"
require_relative "./lib/linked_list"

words = LinkedList.new("hello")
words.push("b")

puts words.to_s
