class Find_words_amount
	def initialize
		@words_amount
	end

	def self.run
		new.run
	end

	def run
		ask_user_for_string
		find_amount
		show_user_sorted_words
	end

	private

	def ask_user_for_string
		puts "Put here string to find words amount!"
		@string = gets.strip
	end

	def find_amount
		@words_amount = @string.split(' ').size
	end

	def show_user_sorted_words
		print "#{@words_amount}\n"
	end
end

Find_words_amount.run