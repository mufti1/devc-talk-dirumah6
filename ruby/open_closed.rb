class Printer
  def initialize(content, formatter)
    @content = content
    @formatter = formatter.new(content)
  end

  def print
    @formatter.print
  end
end

class BasePrinter
  def initialize(content)
    @content = content
    @ink = 10
  end

  def print
    return p "not enough ink" unless ink_available?
    p "I am printer #{@content}"
  end
  
  private

  def ink_available?
    return false if @ink < 5
    true
  end
end

class ColourPrinter < BasePrinter
  def print
    return p "not enough ink" unless ink_available?
    p "I am color printer #{@content}"
  end
end

class BlackAndWhitePrinter < BasePrinter
  def print
    return p "not enough ink" unless ink_available?
    p "I am B&W printer #{@content}"
  end
end
