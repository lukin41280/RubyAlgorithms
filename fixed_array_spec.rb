require 'rspec'
require_relative 'fixed_array'

describe FixedArray do
  
  	let(:array) {FixedArray.new(3)}

	describe "initialize" do
	  	it "creates a new FixedArray" do
	  		expect(array.new_array).to eq [nil, nil, nil]
	  	end

	  	it "throws error when no attribute given" do
	  		expect {FixedArray.new}.to raise_error(ArgumentError)
	  	end
  	end

  	describe "#set" do
  		it "updates index with provided element" do
  			array.set(1, "cat")
  			expect(array.new_array).to eq [nil, "cat", nil]
  		end

  		it "throws error when providing error out of range" do
  			expect {array.set(3, "dog")}.to raise_error(StandardError)
  		end
  	end

  	describe "#get" do
  		it "retrieves element at index" do
  			array.set(2, "dog")
  			expect(array.get(2)).to eq "dog"
  		end

  		it "throws error when index out of range" do
  			expect {array.get(3)}.to raise_error(StandardError)
  		end
  	end

end