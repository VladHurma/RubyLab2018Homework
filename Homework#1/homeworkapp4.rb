class Move_left
	def initialize
		@numbers = [1, 2, 3, 4, 5, 6]
	end

	def self.run
		new.run
	end

	def run
		show_user_array_before_movement
		move_by_my_method
		show_moved_array_to_user
		move_by_push_plus_shift_method
		show_moved_array_to_user
		move_by_rotate_method
		show_moved_array_to_user
	end

	private

	def show_user_array_before_movement
		print "#{@numbers}\n"
	end

	def move_by_rotate_method
		puts 'Rotate method!'
		@numbers.rotate!
	end

	def move_by_my_method
		puts 'Handmade method!'
		buffer = @numbers[0]
		for i in 1..(@numbers.size) do
			@numbers[i-1] = @numbers[i]
		end
		@numbers[@numbers.size - 1] = buffer
	end

	def move_by_push_plus_shift_method
		puts 'Push and shift method!'
		@numbers.push(@numbers.shift)
	end

	def show_moved_array_to_user
		print "#{@numbers}\n"
	end
end


Move_left.run