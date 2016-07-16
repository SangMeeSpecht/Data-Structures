require_relative 'fixed_array'

describe FixedArray do
  let(:array) {FixedArray.new(5)}

  describe "#new" do 
    it "instantiates a new FixedArray object" do 
      expect(array).to be_a(FixedArray)
    end

    it "instantiates a new FixedArray with a specified size" do 
      expect(array.size).to be(5)
    end
  end

  describe "#size" do 
    it "counts the length of an array" do
      array_with_length = FixedArray.new(2) 
      expect(array_with_length.size).to be(2)
    end
  end

  describe "#set" do
    it "sets a value in the array at a specific index and returns the element" do
      array.set(0, "zero")
      expect(array.get(0)).to eq("zero")
    end

    it "does not set a value in the array if the index argument is out of bounds" do 
      expect{array.set(10, output)}.to output("No such index exists\n").to_stdout
      expect{array.set(-10, "ten")}.to output("No such index exists\n").to_stdout
    end
  end

  describe "#get" do 
    it "gets the value from the array at a specified index" do 
      array.set(4, "four")
      expect(array.get(4)).to eq("four")
    end

    it "does not get the value from the array when the index arguement is out of bounds" do 
      expect{array.get(-10)}.to output("No such index exists\n").to_stdout 
      expect{array.get(10)}.to output("No such index exists\n").to_stdout  
    end
  end

end
