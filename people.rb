#4 
class Person
	attr_accessor :name
	def initialize(name)
		@name = name	
	end
	#5
	def greeting
		puts "Hi, my name is #{name}!"
	end
end 

#1-3
class Student < Person
	def learn
		puts "I get it!"
	end 
end

class Instructor < Person
	def teach 
		puts "Everything in Ruby is an Object!"
	end 
end 

#6
chris = Instructor.new("Chris")
chris.greeting

#7
christina = Student.new("Christina")
christina.greeting

#8 
chris.teach
christina.learn

# Calling teach method on student instance doesnt work 
# because method is outside of class