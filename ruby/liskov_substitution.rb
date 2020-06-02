class Rectangle
  attr_reader :width, :height
  def initialize(width, height)
    @width = width
    @height = height
  end

  def area
    @width * @height
  end
end

class Square < Rectangle
  def initialize(side)
    super(side, side)
  end
end
