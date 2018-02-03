class Triangle

  attr_accessor :l1, :l2, :l3

  def initialize(l1,l2,l3)
    @l1 = l1
    @l2 = l2
    @l3 = l3
  end

  def kind
    if @l1 + @l2 <= @l3 || @l1 + @l3 <= @l2 || @l2 + @l3 <= @l1 || @l1 + @l2 + @l3 == 0
      raise TriangleError
    end


    if @l1 == @l2 && @l2 == @l3
      return :equilateral
    elsif @l1 == @l2 || @l2 == @l3 || @l1 == @l3
      return :isosceles
    else
      return :scalene
    end
  end
end

class TriangleError < StandardError

end
