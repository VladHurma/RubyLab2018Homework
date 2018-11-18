class Goals_result
	def initialize
		@goals_scored = []
		@goals_missed = []
	end

	def self.run
		new.run
	end

	def run
		initialize_games_results
		say_user_games_results
	end

	private

	def initialize_games_results
		for i in 0..19 do
			@goals_scored[i] = rand(0..5)
			@goals_missed[i] = rand(0..5)
		end
	end

	def say_user_games_results
		for i in 0..19 do
			print "#{i+1}: "
			if @goals_scored[i] == @goals_missed[i]
				puts "Draw!"
			elsif @goals_scored[i] > @goals_missed[i]
				puts "Win!"
			else
				puts "Lose!"
			end
		end
	end
end

Goals_result.run