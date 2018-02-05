require 'pry'
class Triangle
  attr_accessor :kind
  attr_reader :a, :b, :c
  def initialize(a, b, c)
    # binding.pry
  #   if a == 0 || b  == 0 || c == 0 || a + b < c
  #     begin
  #       raise TriangleError
  #     rescue TriangleError => error
  #       puts error.message
  #     end
    # elsif a == b && b == c
    #   @kind = :equilateral
    # elsif a == b || a == c || b == c
    #   @kind = :isosceles
    # elsif a != b && b != c && c != a
    #   @kind = :scalene
    # end
  # end
    @a = a
    @b = b
    @c = c
  end

  def kind
    validate_triangle
    if @a == @b && @b == @c
      :equilateral
    elsif @a == @b || @a == @c || @b == @c
      :isosceles
    elsif @a != @b && @b != @c && @c != @a
      :scalene
    end
  end

  def validate_triangle
    # binding.pry
    if @a == 0 || @b  == 0 || @c == 0 || @a + @b <= @c || @a + @c <= @b || @b + @c <= @a
      raise TriangleError
    end
  end
end
class TriangleError < StandardError
  def message
    "The sum of the lengths of any two sides of a triangle always exceeds the length of the third side. This is a principle known as the triangle inequality. Further, each side must be larger than 0."
  end
end
