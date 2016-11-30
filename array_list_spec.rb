require 'rspec'
require_relative 'array_list'

describe ArrayList do
	
	let(:list) {ArrayList.new(3)}

	describe "initialize" do
	  	it "creates a new ArrayList" do
	  		expect(list.new_list).to eq [nil, nil, nil]
	  	end

	  	it "throws error when no attribute given" do
	  		expect {ArrayList.new}.to raise_error(ArgumentError)
	  	end
  	end

	describe "#add" do
		it "adds element to last index and returns" do
			expect(list.add("cat")).to eq "cat"
		end
	end

	describe "#set" do
		it "replaces existing element at provided index" do
			list.set(1, "cat")
			expect(list.new_list).to eq [nil, "cat", nil]
		end

		it "throws error when providing error out of range" do
  			expect {list.set(3, "dog")}.to raise_error(StandardError)
  		end
  	end

  	describe "#get" do
  		it "retrieves element at index" do
  			list.set(2, "dog")
  			expect(list.get(2)).to eq "dog"
  		end

  		it "throws error when index out of range" do
  			expect {list.get(3)}.to raise_error(StandardError)
  		end
  	end

  	describe "#length" do 
  		it "returns number of elements in ArrayList" do
  			expect(list.length).to eq 3
  		end
  	end

  	describe "#insert" do
  		it "inserts element into provided index" do
  			list.insert(1, "cow")
  			expect(list.new_list).to eq [nil, "cow", nil, nil]
  		end

  		it "throws error when index out of range" do
  			expect {list.insert(3, "cow")}.to raise_error(StandardError)
  		end
  	end

end