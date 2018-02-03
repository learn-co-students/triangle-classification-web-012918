require 'pry'

class Triangle

  attr_accessor :side_one, :side_two, :side_three, :equilateral, :isosceles, :scalene, :array

  def initialize(side_one, side_two, side_three)
    @side_one = side_one
    @side_two = side_two
    @side_three = side_three
    @array = [@side_one, @side_two, @side_three].sort
  end


  def invalid_triangle
    if (@array[0]+@array[1]) <= @array[2] || @array.map {|side| side <= 0}.include?(true)
      raise TriangleError
    elsif @array.include?(0)
      raise TriangleError
    end
  end


  def kind
    binding.pry
    if @side_one == @side_two && @side_two == @side_three
      :equilateral
    elsif @array[0] == @array[1] || @array[1] == @array[2]
      :isosceles
    elsif self.invalid_triangle
    else
      :scalene
    end
  end
end


class TriangleError < StandardError
  def message
    "This is not a valid triangle"
  end
end
