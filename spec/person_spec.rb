require 'minitest/spec'
require 'minitest/autorun'
require_relative "../lib/person.rb"

describe Person do
	it "creates a person" do
		Person.new("Bill").name.must_equal "Bill"
	end
end