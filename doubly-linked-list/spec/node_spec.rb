require "spec_helper"
require "node"

describe Node do
  let(:node) {Node.new(55)}
  it "has a value" do
    expect(node.value).to eq 55
  end
  it "has a prev_node"
  it "has a next_node"
end
