require('rspec')
require('triangles')

describe(Triangle) do
  describe("#sides?") do
    it("will return false if it is not a triangle") do
      test_triangle = Triangle.new(50, 10, 2)
      expect(test_triangle.sides()).to(eq("These measurements do not make a triangle"))
    end
  end

  describe("#equilateral?") do
    it("will return a equilateral if all sides are equal") do
      test_triangle = Triangle.new(10, 10, 10)
      expect(test_triangle.equilateral()).to(eq("These sides make a equilateral"))
    end
  end

  describe("#isosceles?") do
    it("will return a isosceles triangle if 2 sides are equal") do
      test_triangle = Triangle.new(10, 20, 10)
      expect(test_triangle.isosceles()).to(eq("These sides make a isosceles"))
    end
  end
end
