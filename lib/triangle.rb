
require "pry"

class Triangle
    
  attr_accessor :side_1, :side_2, :side_3

  def initialize(side_1, side_2, side_3)
    @side_1 = side_1
    @side_2 = side_2
    @side_3 = side_3
  end

  def kind
    if ((@side_1 != 0 && @side_1.negative? == false) && side_1 == side_2)  &&  ((@side_2 != 0 && @side_2.negative? == false) && side_2 == side_3)  && ((@side_3 != 0 && @side_3.negative? == false) && @side_3 == @side_1)
    "equilateral".to_sym
    elsif ((@side_1 != 0 && @side_1.negative? == false) && @side_1 == @side_2 && @side_1 + @side_2 > @side_3) || ((@side_1 != 0 && @side_1.negative? == false) && (@side_1 == @side_3 && @side_1 + @side_3 != @side_2)) || (@side_2 != 0 && @side_2.negative? == false) && @side_2 == @side_3  
      "isosceles".to_sym
    elsif ((@side_1 != 0 && @side_1.negative? == false) && @side_1 != @side_2) && ((@side_2 != 0 && @side_2.negative? == false) && @side_2 != @side_3) &&  ((@side_1 != 0 && @side_1.negative? == false) && @side_1 != @side_3) && (@side_3 != 0) && (@side_2 + @side_3 > @side_1)
      "scalene".to_sym 
    else
      raise TriangleError
    end
  end

  class TriangleError < StandardError
  end
end
