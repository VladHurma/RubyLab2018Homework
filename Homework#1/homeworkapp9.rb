class If_word_palindrome
	def initialize
		@checkup = false
	end

	def self.run
		new.run
	end

	def run
		ask_user_for_word
		check_word
		tell_user_about_palindrome
	end

	private

	def ask_user_for_word
		puts "Enter your word for checking, if this word is palindrome!"
		@word = gets.strip
	end

	def check_word
		symbol_arr = @word.split(//)
		if symbol_arr[0..(symbol_arr.size / 2)] == symbol_arr.reverse[0..symbol_arr.size / 2]
			@checkup = true
		end
	end

	def tell_user_about_palindrome
		if @checkup == true
			puts "#{@word} is palindrome!"
		else
			puts "#{@word} isn't palindrome!"
		end
	end
end

If_word_palindrome.run