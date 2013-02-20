require 'minitest/spec'
require 'minitest/autorun'
require_relative "../lib/person.rb"

describe Person do
  before do
    @bill = Person.new("Bill")
  end

  it "creates a person" do
    @bill.name.must_equal "Bill"
  end

  it "objects maintain object equality" do
    @bill.must_be_same_as @bill
  end

  it "objects maintain equality (==)" do
    @bill.must_equal @bill
  end

  it "must respond to name" do
    @bill.must_respond_to :name
  end
end