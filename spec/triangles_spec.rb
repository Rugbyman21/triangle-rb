require('rspec')
require('triangles')

describe(Triangle) do
  describe("#initialize?") do
    it("The sides of the triangle") do
      test_triangle = Triangle.new(2, 3, 4)
      test_triangle.should be_an_instance_of Triangle
    end
  end
  describe("#type?") do
    it("will return false if the sum of the lengths of any two sides of a triangle is less than or equal to the length of the third side") do
      test_triangle = Triangle.new(10, 10, 20)
      expect(test_triangle.type()).to(eq("These measurements do not make a triangle"))
    end

    it("will return a equilateral if all sides are equal") do
      test_triangle = Triangle.new(10, 10, 10)
      expect(test_triangle.type()).to(eq("These sides make a equilateral"))
    end

    it("will return a isosceles triangle if 2 sides are equal") do
      test_triangle = Triangle.new(20, 5, 20)
      expect(test_triangle.type()).to(eq("These sides make a isosceles"))
    end

    it("will return a scalene triangle if no sides are equal") do
      test_triangle = Triangle.new(20, 30, 40)
      expect(test_triangle.type()).to(eq("These sides make a scalene"))
    end
  end
end
