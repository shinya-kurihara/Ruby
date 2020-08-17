class Foo
  def foo(args=5)
    p args * 2 
  end
end
class Bar < Foo
  def foo(args=2)
    super(10)
    super
    super()
  end
end
bar = Bar.new
bar.foo
  #=> 20
  #=> 4
  #=> 10