class Triangle
    define_method(:initialize) do |a_side, b_side, c_side|
    @a_side = a_side
    @b_side = b_side
    @c_side = c_side
  end

  define_method(:sides) do
    if @a_side + @b_side > @c_side && @a_side + @c_side > @b_side && @b_side + @c_side > @a_side
      return true
    else
      return "These measurements do not make a triangle"
    end
  end

  define_method(:equilateral) do
    if @a_side == @b_side && @b_side == @c_side && @a_side == @c_side
      return "These sides make a equilateral"
    else
      return false
    end
  end
end
