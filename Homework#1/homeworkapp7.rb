class Sort_by_words_length
	def initialize
		@words_array = []
	end

	def self.run
		new.run
	end

	def run
		ask_user_for_string
		sort_by_size
		show_user_sorted_words
	end

	private

	def ask_user_for_string
		puts "Put here string to sort it by length of word!"
		@string = gets.strip
	end

	def sort_by_size
		@words_array = @string.split(' ').sort_by {|word| word.length}
	end

	def show_user_sorted_words
		print "#{@words_array}\n"
	end
end

Sort_by_words_length.run