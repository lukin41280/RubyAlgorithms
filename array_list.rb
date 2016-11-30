require_relative 'fixed_array'

class ArrayList

	attr_accessor :new_list

	def initialize(size_of_list)
		@num_of_elements = size_of_list
		@new = FixedArray.new(size_of_list)
		@new_list = @new.new_array
		@bounds_error = "OutOfBoundsException: Index is beyond bounds of array"
	end

	def add(element)
		@new_list[@num_of_elements +1] = element
	end

	def set(index, element)
	    if @num_of_elements > index
	      @new_list[index] = element
	    else
	      raise StandardError, @bounds_error
	    end
  	end

  	def get(index)
	  if @num_of_elements > index
	    return @new_list[index]
	  else
	    raise StandardError, @bounds_error
	  end
	end

	def length
		counter = 0
		@new_list.each do 
			counter +=1
		end
		counter
	end

	def insert(index, element)
		if index >= @num_of_elements
			raise StandardError, @bounds_error
		else
			first_half = @new_list[0...index]
			second_half = @new_list[index...@new_list.length]
			first_half.concat([element])
			first_half.concat(second_half)
			@new_list = first_half
		end
	end

end

