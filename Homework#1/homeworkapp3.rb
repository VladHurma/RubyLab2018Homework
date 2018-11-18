class Minimalize_all_positive_numbers
	def initialize
		@numbers = []
	end

	def self.run
		new.run
	end

	def run
		set_numbers
		show_array_before_refactoring
		refactor_array
		show_refactored_array_to_user
	end

	private

	def set_numbers
		for i in 0..9 do
			@numbers[i] = rand(-5..5)
		end
	end

	def show_array_before_refactoring
		print "#{@numbers}\n"
	end

	def refactor_array
		@numbers.each do |num|
			if num > 0
				@numbers[@numbers.index(num)] = @numbers.min
			end
		end
	end

	def show_refactored_array_to_user
		print "#{@numbers}\n"
	end
end

Minimalize_all_positive_numbers.run