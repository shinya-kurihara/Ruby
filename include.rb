module Foo
  def foo
    puts("foo")
  end
end
module Bar
  def bar
    puts("bar")
  end
end
class Baz
  include Foo
  include Bar
end
baz = Baz.new
baz.foo  #=> foo
baz.bar  #=> bar

module Foo
  def foo
    puts("foo")
  end
  module_function :foo
end
Foo.foo #=> foo