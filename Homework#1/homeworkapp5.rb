class Add_zero_before_positive_numbers
	def initialize
		@numbers = []
	end

	def self.run
		new.run
	end

	def run
		filling_array_with_numbers
		show_user_array_before_changes
		my_adding_zero_method
		show_user_rebuildet_array
	end

	private

	def filling_array_with_numbers
		for i in 0..4 do
			@numbers[i] = rand(-5..5)
		end
	end

	def show_user_array_before_changes
		print "#{@numbers}\n"
	end

	def adding_zero
		@numbers = @numbers.map { |e| e.positive? ? [0, e] : e}.flatten!
	end

	def my_adding_zero_method
		i = 0
		while i < @numbers.size
			if @numbers[i].to_i > 0
				@numbers.insert(i, 0)
				i += 1	
			end
			i += 1
		end
	end

	def show_user_rebuildet_array
		print "#{@numbers}\n"
	end
end

Add_zero_before_positive_numbers.run