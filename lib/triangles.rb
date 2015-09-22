class Triangle
  define_method(:initialize) do |a_side, b_side, c_side|
    @a_side = a_side
    @b_side = b_side
    @c_side = c_side
  end

  define_method(:type) do
    if @a_side + @b_side <= @c_side || @a_side + @c_side <= @b_side || @b_side + @c_side <= @a_side
      return "These measurements do not make a triangle"
    elsif @a_side == @b_side && @b_side == @c_side && @a_side == @c_side
      return "These sides make a equilateral"
    elsif @a_side == @b_side || @b_side == @c_side || @a_side == @c_side
      return "These sides make a isosceles"
    else
      return "These sides make a scalene"
    end
  end
end
