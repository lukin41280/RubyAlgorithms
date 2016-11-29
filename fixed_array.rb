class FixedArray 

	attr_accessor :new_array

	def initialize (size_of_array)
		@new_array = Array.new(size_of_array)
		@bounds_error = "OutOfBoundsException: Index is beyond bounds of array"
	end
	
	def within_array_bounds? (entered_index)
	  if @new_array.length > entered_index
	    true
	  else
	    false
	  end
	end
	
	def get (index)
	  if within_array_bounds?(index)
	    return @new_array[index]
	  else
	    raise StandardError, @bounds_error
	  end
	end

  def set (index, element)
    if within_array_bounds?(index)
      @new_array[index] = element
    else
      raise StandardError, @bounds_error
    end
  end

end

