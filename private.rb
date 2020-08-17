class Foo
  protected
  def foo
    puts("Protected Method foo")
  end
  private 
  def bar
    puts("Private Method bar")
  end
  public 
  def useFoo(o)
    o.foo
  end
  def useBar(o)
    o.bar
  end
end
 
 
fooReciever = Foo.new
fooSender = Foo.new
 
fooSender.useFoo(fooReciever) # "Protected Method foo"が表示される
fooSender.useBar(fooReciever) # NoMethodErrorが発生します
 