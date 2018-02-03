require "pry"
class Triangle
  # write code here
  attr_accessor :side0, :side1, :side2, :tri_array

  def initialize(side0, side1, side2)
    @side0 = side0
    @side1 = side1
    @side2 = side2
    @tri_array = [side0, side1, side2].sort
  end

  def kind
    test(@side0)
    test(@side1)
    test(@side2)
    tri_test(@tri_array)

    if @tri_array[0]==@tri_array[2]
      :equilateral
    elsif @tri_array[0]==@tri_array[1] || @tri_array[2]==@tri_array[1]
      :isosceles
    else
      :scalene
    end
  end

  def test(side)
    case true
    when side.class != Fixnum && side.class != Float
      begin
        raise TriangleError
      # rescue TriangleError => error
      #   puts error.int_message
      end
    when side <= 0
      begin
        raise TriangleError
      # rescue TriangleError => error
      #   puts error.zero_message
      end
    end
  end

  def tri_test(array)
    if (array[0]+array[1]) <= array[2]
      begin
        raise TriangleError
      # rescue TriangleError => error
      #   puts error.ineq_message
      end
    end
  end

end

class TriangleError < StandardError
  # def args_message
  #   "please give three inputs"
  # end
  def int_message
    "please give three numbers"
  end
  def ineq_message
    "that is not a valid triangle"
  end
  def zero_message
    "all sides must be greater than zero"
  end
end

# binding.pry
# ""







# (*args)
# if args.count != 3
#   begin
#     raise TriangleError
#   rescue TriangleError => error
#     puts error.args_message
#   end
# else
#   args.each_with_index{|arg,i|
#     self.send("side#{i}",arg)
#     @tri_array << arg
#     @tri_array.sort
#   }
# end
