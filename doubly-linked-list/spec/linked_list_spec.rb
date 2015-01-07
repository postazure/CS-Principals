require "spec_helper"
require "linked_list"

describe LinkedList do
  let(:list) {LinkedList.new("a")}
  describe "#to_s" do
    it "has 1 item" do
      expect(list.to_s).to eq "a"
    end
    it "has multiple items" do
      list.push("b")
      expect(list.to_s).to eq "a, b"
    end
  end

  describe "#push" do
    it "adds 1 item list" do
      list.push("b")
      list.push("c")
      expect(list.to_s).to eq "a, b, c"
    end
  end

  describe "#unshift" do
    it "has a next value of the previous head" do
      list.unshift("z")
      expect(list.to_s).to include "z"
    end
    it "is the new head" do
      list.unshift "z"
      expect(list.to_s).to eq "z, a"
    end
  end

  describe "#length" do
    it "returns number of cells a int" do
      list.push "b"
      list.push "c"
      list.push "d"
      expect(list.length).to eq 4
    end
  end

  describe "#find" do
    it "returns first node with same value" do
      list.push("b")
      list.push("c")
      found_node = list.find("b")
      expect(found_node.value).to eq "b"
    end
    it "returns first node with same value at head" do
      list.push("b")
      list.push("c")
      found_node = list.find("a")
      expect(found_node.value).to eq "a"
    end
    it "returns first node with same value at tail" do
      list.push("b")
      list.push("c")
      found_node = list.find("c")
      expect(found_node.value).to eq "c"
    end
  end
end
