class Triangle
  # write code here
  def initialize(a,b,c)
    @a = a
    @b = b
    @c = c
  end

  def kind
    if @a + @b <= @c || @a + @c <= @b || @b + @c <= @a || @a <= 0 || @b <= 0 || @c <= 0
      raise TriangleError
    elsif @a == @b && @a == @c && @b == @c
      :equilateral
    elsif @a != @b && @a != @c && @b != @c
      :scalene
    else
      :isosceles
    end
  end
end

class TriangleError < StandardError

end
