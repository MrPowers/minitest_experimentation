require 'minitest/spec'
require 'minitest/autorun'
require_relative "../lib/calculator.rb"

describe Calculator do
	it "adds 3 and 4" do
		Calculator.new.add(3, 4).must_equal 7
	end

	it "multiplies two numbers" do
		Calculator.new.multiply(3, 4).must_equal 12
	end

	it "3 times 4 is greater than 10" do
		Calculator.new.multiply(3, 4).must_be(:>, 10)
	end

	it "PI is close to 3.14" do
		Calculator.new.PI.must_be_close_to(0.01, 3.14)
	end

	it "Creates calculator objects" do
		Calculator.new.must_be_instance_of(Calculator)
	end
end