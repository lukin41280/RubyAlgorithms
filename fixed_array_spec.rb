require 'rspec'
require_relative 'fixed_array'

describe FixedArray do
  

  	it "creates a new FixedArray" do
  		array = FixedArray.new(3)
  		expect(array.new_array).to eq [nil, nil, nil]
  	end


end