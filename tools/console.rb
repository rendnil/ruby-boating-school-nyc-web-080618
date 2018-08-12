require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

#students
a = Student.new("a")
b = Student.new("b")
c = Student.new("c")
d = Student.new("d")
e = Student.new("e")



#instructors
i1 = Instructor.new("i1")
i2 = Instructor.new("i2")
i3 = Instructor.new("i3")
i4 = Instructor.new("i4")
i5 = Instructor.new("i5")


#boatingtests
#initialize(test_name, status, student, instructor)

t1 = BoatingTest.new("101", "pending", a, i1)
t2 = BoatingTest.new("202", "failed", a, i2)
t3 = BoatingTest.new("101", "passed", c, i1)
t4 = BoatingTest.new("101", "pending", c, i1)
t5 = BoatingTest.new("303", "passed", a, i3)
t6 = BoatingTest.new("202", "pending", d, i2)





binding.pry
0 #leave this here to ensure binding.pry isn't the last line
