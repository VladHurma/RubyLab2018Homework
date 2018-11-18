class Sort_array
	def initialize
		@numbers = [0, 4, 2, 6, 1, 9, 5, 8, 3, 7]
	end

	def self.run
		new.run
	end

	def run
		show_user_array_before_changes
		sort_numbers
		show_user_sorted_array
	end

	private

	def sort_numbers
		@numbers.sort!
	end

	def show_user_array_before_changes
		print "#{@numbers}\n"
	end

	def show_user_sorted_array
		print "#{@numbers}\n"
	end
end

Sort_array.run