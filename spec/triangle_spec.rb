require('rspec')
require('triangle')

describe(Triangle) do
  describe("#equilateral?") do
    it("returns false if it is not an equilateral triangle") do
      test_triangle = Triangle.new(3, 3, 4)
      expect(test_triangle.equilateral?()).to(eq(false))
    end

    it("returns true if it is an equilateral triangle") do
      test_triangle = Triangle.new(2, 2, 2)
      expect(test_triangle.equilateral?()).to(eq(true))
    end
  end

  describe("#isosceles?") do
    it("returns false if it is not an isosceles triangle") do
      test_triangle = Triangle.new(3,3,3)
      expect(test_triangle.isosceles?()).to(eq(false))
    end

    it("returns true if it is an isosceles triangle") do
      test_triangle = Triangle.new(3,3,4)
      expect(test_triangle.isosceles?()).to(eq(true))
    end
  end

  describe("#scalene?") do
    it("returns false if it is not an scalene triangle") do
      test_triangle = Triangle.new(3,3,3)
      expect(test_triangle.scalene?()).to(eq(false))
    end

    it("returns true if it is an scalene triangle") do
      test_triangle = Triangle.new(3,5,4)
      expect(test_triangle.scalene?()).to(eq(true))
    end
  end

  describe("#valid_triangle?") do
    it("returns false if it is not a triangle") do
      test_triangle = Triangle.new(3,3,6)
      expect(test_triangle.valid_triangle?()).to(eq(false))
    end

    it("returns true if it is a triangle") do
      test_triangle = Triangle.new(3,3,3)
      expect(test_triangle.valid_triangle?()).to(eq(true))
    end
  end

end
