class Hello
  def hello
    puts "hello, world!"
  end 
end


class A
  def m1
    5
  end
end
class B
  def m2
    a = A.new
    b = a.m1() + 3
    print(b)
    b
  end
end


x = B.new
x.m2