class Tree
  attr_accessor :root
  def initialize(root)
    @root = Node.new(root)
  end

  def dfs(value, node = @root)
    return if node.nil?
    return node if node.value == value
    return dfs(value, node.left) || dfs(value, node.right)
    # return dfs(value, node.left) unless dfs(value, node.left).nil?
    # return dfs(value, node.right) unless dfs(value, node.right).nil?
  end
end
