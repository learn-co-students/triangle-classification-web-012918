class Triangle
  attr_reader :side1, :side2, :side3, :sides

  def initialize(side1, side2, side3)
    @side1 = side1
    @side2 = side2
    @side3 = side3
    @sides = [side1, side2, side3].sort
  end

  def kind
    case
    when self.illegal
      raise TriangleError
    when self.sides.uniq != self.sides
      # self.side1 == self.side2 && self.side1 == self.side3
      :equilateral
    when self.side1 == self.side2 || self.side1 == self.side3 || self.side2 == self.side3
      :isosceles
    else
      :scalene
    end
  end

  def illegal
    if self.sides.any? {|side| side == 0}
      true
    elsif self.sides[0] + self.sides[1] <= self.sides[2]
      true
    else
      false
    end
  end

end

class TriangleError < StandardError

end
