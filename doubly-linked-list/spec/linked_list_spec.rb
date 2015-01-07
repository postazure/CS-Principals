require "spec_helper"
require "linked_list"

describe LinkedList do
  describe "#to_s" do
    it "has 1 item" do
      list = LinkedList.new("a")

      expect(list.test_output).to eq "a"
    end

    it "has multiple items" do
      list = LinkedList.new("a")
      list.push("b")

      expect(list.test_output).to eq "a, b"
    end
  end

  describe "#push" do
    it "adds 1 item list" do
      list = LinkedList.new("a")
      list.push("b")
      list.push("c")

      expect(list.test_output).to eq "a, b, c"
    end
  end
end
