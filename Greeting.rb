# puts "Good Morning".index("d")
# puts "Good afternoon".length
# puts "Good evening".class

# p 10.div(5)
# p 10.remainder(3)

# p 10.class
# p 10.0.class 
  
# age =32

# if age>=10 && age<20
#   p "10代"
# elsif age>=20 && age<30
#   p "20代"
# elsif age>=30 && age<40
#   p "30代"
# else
#   p "それ以外"
# end

# arr = [2,4,6,8,10]
# sum = 0

# for i in arr
#   sum += i
#   p sum
# end

# for i in 1 .. 10
#   if i == 3
#     next
#   elsif i == 7
#     break
#   else
#     p i
#   end
# end

# def say_hello
#   p "Hello World"
# end

# say_hello

# def sayHello(greeting)
#   p greeting
# end

# sayHello("good mornning")

# def add(num01, num02)
#   p num01+num02
# end

# add(1,2)

# def avr(num01,num02,num03)
#   return (num01 + num02 + num03)/3
# end

# p avr(9,4,3)

# class Student
#   def initialize(name)
#     @name = name
#   end

#   def avg(math, english)
#     return (math + english)/2
#   end

#   attr_accessor :name
# end

# a001 = Student.new("sato")
# p a001.name,a001.avg(30,70)

# a002 =Student.new("suzuki")
# p a002.name,a002.avg(80,60)

class Student
  def initialize(name)
    @name = name
  end

  def cal_avg(data)
    sum = 0
    for score in data do
      sum += score
    end
    avg = sum / data.length
    return avg
  end

  def jedge(avg)
    result = ''
    if avg >= 60
      result = "passed"
    else
      result = "failed"
    end
    return result
  end

  attr_accessor :name
end

a001 = Student.new("sato")
data = [70,65,50,90,30]
avg = a001.cal_avg(data)
result = a001.jedge(avg)

p a001.name
p avg
p result
