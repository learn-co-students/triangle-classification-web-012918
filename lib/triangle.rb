require 'pry'

class Triangle

  attr_accessor :s1, :s2, :s3

  def initialize(s1, s2, s3)
    @s1 = s1
    @s2 = s2
    @s3 = s3
  end


  def invalid_triangle
    if @s1 <= 0 || @s2 <= 0 || @s3 <= 0
      raise TriangleError
    elsif @s1+@s2<=@s3 || @s2+@s3<=@s1 || @s1+@s3<=@s2
      raise TriangleError
    end
  end


  def kind
    #binding.pry\
    if self.invalid_triangle
    elsif @s1 == @s2 && @s2 == @s3
      :equilateral
    elsif @s1 == @s2 || @s2 == @s3 || @s3 == @s1
      :isosceles
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
