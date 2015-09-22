require('rspec')
require('triangles')

describe(Triangle) do
  describe("#sides?") do
    it("will return false if it is not a triangle") do
      test_triangle = Triangle.new(50, 10, 10)
      expect(test_triangle.sides()).to(eq("These measurements do not make a triangle"))
    end
  end
end
