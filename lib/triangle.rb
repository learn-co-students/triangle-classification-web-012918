class Triangle
  # write code here
  attr_accessor :side1, :side2, :side3, :area

  def initialize(length1, length2, length3)
    @side1 = length1
    @side2 = length2
    @side3 = length3
    @area = length1**2 + length2**2 + length3**3
  end

  def kind
        if self.area <=0
          raise TriangleError
          puts "something is wrong"
        elsif @side1 >= @side2 + @side3 || @side2 >= @side3 + @side1 || @side3 >= @side2 + @side1
          raise TriangleError
          puts "something is wrong"
        elsif @side1 == @side2 && @side2 == @side3
           :equilateral#(3 equal sides)
        elsif @side1 == @side2 || @side2 == @side3 || @side3 == @side1
           :isosceles#(2 equal sides)
        elsif @side1 > 0 && @side2 > 0 && @side3 > 0
           :scalene
        end
    end

end

class TriangleError < StandardError
  def message
    "wrong"
  end
end
