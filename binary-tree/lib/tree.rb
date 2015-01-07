class Tree
  attr_accessor :root
  def initialize(root)
    @root = Node.new(root)
  end

  def dfs(value, node = @root)
    return if node.nil?
    return node if node.value == value
    dfs(value, node.left) || dfs(value, node.right)
  end
end
