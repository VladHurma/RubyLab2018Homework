class Find_hihgest_student
	def initialize
		@height = [180, 210, 172, 180, 239, 168]
		@students = ["Sam", "Mickle", "George", "Genry", "Will", "Waldemar"]
	end

	def self.run
		new.run
	end

	def run
		say_user_name_of_the_highest_student
	end

	private

	def say_user_name_of_the_highest_student
		for i in 0..(@students.size) do
			if i == @height.index(@height.max)
				puts "#{@students[i]} is the highest student!"
			end
		end
	end
end

Find_hihgest_student.run