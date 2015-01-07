require "spec_helper"
require "linked_list"

describe LinkedList do
  let(:list) {LinkedList.new("a")}
  describe "#to_s" do
    it "has 1 item" do
      expect(list.test_output).to eq "a"
    end

    it "has multiple items" do
      list.push("b")
      expect(list.test_output).to eq "a, b"
    end
  end

  describe "#push" do
    it "adds 1 item list" do
      list.push("b")
      list.push("c")
      expect(list.test_output).to eq "a, b, c"
    end
  end

  describe "#unshift" do
    it "has a next value of the previous head" do
      list.unshift("z")
      expect(list.test_output).to include "z"
    end

    it "is the new head" do
      list.unshift "z"
      expect(list.test_output).to eq "z, a"
    end
  end
end
