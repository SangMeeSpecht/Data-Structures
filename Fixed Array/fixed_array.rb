class FixedArray

  def initialize(size)
    @fixed_array = Array.new(size)
  end

  def size
    @fixed_array.length
  end

  def set(index, element)
    if valid_index?(index)
      puts "No such index exists"
    else 
      @fixed_array[index] = element
    end
  end

  def get(index)
    if valid_index?(index)
      puts "No such index exists"
    else
      p @fixed_array[index]
    end
  end

  private
  def valid_index?(index)
    index >= @fixed_array.length || index < 0
  end
  
end


