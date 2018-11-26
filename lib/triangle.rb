class Triangle

  def initialize(side_one, side_two, side_three)
    @side_one = side_one
    @side_two = side_two
    @side_three = side_three
  end

  def equilateral?
    if (@side_one == @side_two) && (@side_two == @side_three)
      return true
    else
      return false
    end
  end

  def isosceles?
    if ((@side_one == @side_two) && (@side_one != @side_three)) || ((@side_one == @side_three) && (@side_one != @side_two))
      return true
    else
      return false
    end
  end

  def scalene?
    if (@side_one != @side_two) && (@side_two != @side_three)
      return true
    else
      return false
    end
  end

  def valid_triangle?
    if ((@side_one + @side_two) > @side_three) && ((@side_one + @side_three) > @side_two) && ((@side_two + @side_three) > @side_one)
      return true
    else
      return false
    end
  end

end
