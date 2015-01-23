class Rover
	attr_accessor :xposition, :yposition, :direction
	
	def initialize(xposition,yposition,direction)
		@xposition = xposition
		@yposition = yposition
		@direction = direction
	end 

	def to_s
		"#{xposition} #{yposition} #{direction}"
	end

	def read_instruction(instructions)
		instructions.each_char do |instruction|
			if instruction == "M"
				move
			elsif instruction == "L" || instruction == "R"
				turn(instruction)
			else  "Please enter a valid command"
			end 
		end
	end 
	
	def move
		case @direction
			when "N"
				@yposition += 1
			when "E"
				@xposition += 1
			when "S"
				@yposition -= 1
			when "W"
				@xposition -= 1
			else 
				puts "That is not a valid direction" 
		end 
	end 

	def turn(rotation)
		
		if (@direction == "E" && rotation == "L") || (@direction == "W" && rotation == "R")
			@direction = "N"
		elsif (@direction == "S" && rotation == "L") || (@direction == "N" && rotation == "R")
			@direction = "E"
		elsif (@direction == "W" && rotation == "L") || (@direction == "E" && rotation == "R")
			@direction = "S"
		elsif (@direction == "N" && rotation == "L") || (@direction == "S" && rotation == "R")
			@direction = "W"
		else puts "That is not a valid turn" 
		end	
	end

end 

puts "Please enter the plateau size"
plateau = gets.chomp

puts "Please enter the coordinates and direction of the first rover (format: x y N/E/S/W)"
first_rover = gets.chomp
rover_one = Rover.new(first_rover[0].to_i, first_rover[2].to_i, first_rover[4].upcase)

puts "Please enter a series of instructions (M for move, L for left, R for right) for the first rover"
rover_one.read_instruction(gets.chomp.upcase)

puts "Please enter the coordinates and direction of the second rover (format: x y N/E/S/W)"
second_rover = gets.chomp
rover_two = Rover.new(second_rover[0].to_i, second_rover[2].to_i, second_rover[4].upcase)

puts "Please enter a series of instructions (M for move, L for left, R for right) for the second rover"
rover_two.read_instruction(gets.chomp.upcase)

puts rover_one
puts rover_two