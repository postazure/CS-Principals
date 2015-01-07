require_relative "./lib/node"
require_relative "./lib/tree"
require "pry"

# root = Node.new("HTML")
# root.left = Node.new("HEAD")
# root.right = Node.new("BODY")
# root.right.left = Node.new("DIV")
# root.right.right = Node.new("LI")

tree = Tree.new("HTML")
tree.root.left = Node.new("HEAD")
tree.root.left.left = Node.new("Script")
tree.root.left.right = Node.new("title")
tree.root.right = Node.new("BODY")
tree.root.right.left = Node.new("Div")
tree.root.right.left.left = Node.new("P")
tree.root.right.left.right = Node.new("A")
tree.root.right.right = Node.new("Ul")
tree.root.right.right.left = Node.new("Li")


p tree.dfs("Li")
# binding.pry
