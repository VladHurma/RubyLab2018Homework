class Rotate_array
	def initialize
		@array = [1, 2, 3, 4, 5, 6 ,7]
	end

	def self.run
		new.run
	end

	def run
		show_array_before_rotate
		ask_user_for_steps_amount
		do_rotate_array
		show_rotated_array
	end

	private

	def ask_user_for_steps_amount
		puts 'How many steps you wonna do?'
		@steps_amount = steps_amount = gets.strip.to_i if correct_input?(steps_amount)
	end

	def correct_input?(count)
		return true if count.to_i < 0
		begin
			raise 'Steps amount can\'t be less than zero!'
		rescue RuntimeError => e
			puts e.message
			loop do
				@steps_amount = gets.strip.to_i * (-1)
				break if @steps_amount.negative?
			end
		end
	end

	def show_array_before_rotate
		print "#{@array}\n"
	end

	def do_rotate_array
		@array = @array.rotate(@steps_amount)
	end

	def show_rotated_array
		print "#{@array}\n"
	end
end

Rotate_array.run