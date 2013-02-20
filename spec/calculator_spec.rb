require 'minitest/spec'
require 'minitest/autorun'
require_relative "../lib/calculator.rb"

describe Calculator do
  before do
    @calculator = Calculator.new
  end

  it "adds two numbers" do
    @calculator.add(3, 4).must_equal 7
  end

  it "multiplies two numbers" do
    @calculator.multiply(3, 4).must_equal 12
  end

  it "3 times 4 is greater than 10" do
    @calculator.multiply(3, 4).must_be(:>, 10)
  end

  it "PI is close to 3.14" do
    @calculator.PI.must_be_close_to(0.01, 3.14)
  end

  it "Creates calculator objects" do
    @calculator.must_be_instance_of(Calculator)
  end

  it "boring method returns nil" do
    @calculator.boring.must_be_nil
  end

  it "4 divided by zero raises exception" do
    lambda {@calculator.divide(4, 0)}.must_raise(ZeroDivisionError)
  end
end