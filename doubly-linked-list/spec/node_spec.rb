require "spec_helper"
require "node"

describe Node do
  let(:node) {Node.new(55)}
  it "has a value" do
    expect(node.value).to eq 55
  end

  it "has a prev_node" do
    test_node = Node.new(37)
    node.next_node = test_node
    next_node_value = node.next_node.value
    expect(next_node_value).to eq 37
  end

  it "has a next_node" do
    test_node = Node.new(28)
    node.prev_node = test_node
    prev_node_value = node.prev_node.value
    expect(prev_node_value).to eq 28
  end
end
