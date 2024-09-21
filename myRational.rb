class MyRational
  def initialize(num,den=1)
    if den == 0 
      raise "Denominator cannot be 0"
    elsif den < 0
      @num = - num
      @den = - den
    else
      @num = num
      @den = den
    end
    reduce 
  end
  def add! r
    n = r.num
    d = r.den
    @num = (@num * d) + (@den * n)
    @den = @den * d
    reduce
    self
  end
  def + r
    newR =  MyRational.new(@num, @den)
    newR.add!(r) 
  end
  def to_s
    s = @num.to_s
    s = s + "/" + @den.to_s if @den !=1  
    s
  end

    attr_reader  :num , :den
  private
  def gcd(a, b)
    if a == 0
      b
    else
      gcd(b % a, a)
    end
  end
  def reduce
    if @num == 0 
      @den = 1
    else
      d = gcd(@num.abs, @den)
      @num = @num / d
      @den = @den / d
    end
  end
end
def main
  r =  MyRational.new(2, 3)
  a =  MyRational.new(9,3)
  puts r.to_s
  puts a.to_s
  r.add!(a)
  puts r.to_s
  b = (r + a).add!(MyRational.new(1,3)) 
  puts b.to_s
 
  
end

