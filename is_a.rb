class Foo
end
class Bar < Foo
end
class Baz < Bar
end
baz = Baz.new
p baz.is_a?(Baz)
p baz.is_a?(Bar)
p baz.is_a?(Foo)