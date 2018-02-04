require 'pry'
class Triangle
  attr_accessor :l1, :l2, :l3

  def initialize(l1, l2, l3)
    @l1 = l1
    @l2 = l2
    @l3 = l3
  end

  def kind
    
    if @l1 <= 0 || @l2 <= 0 || @l3 <= 0
      raise TriangleError
    elsif @l1+@l2<=@l3 || @l2+@l3<=@l1 || @l1+@l3<=@l2
      raise TriangleError
    end

    case [@l1, @l2, @l3].uniq.size
    when 1
      :equilateral
    when 2
      :isosceles
    when 3
      :scalene
    end
  end

end

class TriangleError < StandardError
  def message
    "Invalid Triangle"
  end
end
