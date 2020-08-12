class Person
  def name
    return @name
  end
  def name=(value)
    @name = value
  end
end
john = Person.new
john.name = "John"
p john.name  #=> John
bob = Person.new
bob.name = "Bob"
p bob.name   #=> Bob

class Greeting
  attr_reader :hello
  attr_writer :bye
  attr_accessor :pardon
end
greeting = Greeting.new
greeting.hello  #=> nil
greeting.bye = 42
greeting.pardon = "sorry"
p greeting.pardon  #=> sorry