require 'pry'

class Triangle
  # write code here
  attr_reader :side_1, :side_2, :side_3

  def initialize(side_1, side_2, side_3)
    @side_1 = side_1
    @side_2 = side_2
    @side_3 = side_3
  end

  def kind
    #return error message if triangle is invalid (<= 0/nil sides)
    if @side_1 == nil || @side_2 == nil || @side_3 == nil || @side_1 <= 0 || @side_2 <= 0 || @side_3 <= 0
      raise TriangleError
    #error if triangle inequality (aka impossible triangle)
    elsif @side_1 + @side_2 <= @side_3 || @side_1 + @side_3 <= @side_2 || @side_2 + @side_3 <= @side_1
      raise TriangleError
    #return :equilateral if all sides are equal
    elsif @side_1 == @side_2 && @side_1 == @side_3
      :equilateral
    #return :isosceles if two sides are equal
    elsif @side_1 == @side_2 || @side_1 == @side_3 || @side_2 == @side_3
      :isosceles
    #return :scalene if no sides are equil
    elsif @side_1 != @side_2 || @side_1 != @side_3 || @side_2 != @side_3
      :scalene
    end
  end

end

class TriangleError < StandardError
end

# binding.pry
'hi'
