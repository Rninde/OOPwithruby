class Board
	def initialize
		@select = ["W", "R", "G", "B", "O", "Y", "V", "P"]
		@code = []
		@whitecount = 0
		@redcount = 0
		@previous = []
		@win_condition = false
	end
	def new_code
	@select.shuffle!
	@code.push(@select[0], @select[1], @select[2], @select[3])
	end
	def input
		puts "try a code from W, R, G, B, O, Y, V, P"
		@input = gets.chomp.split(" ")
	end
	def check
		@input.each { |i| @whitecount += 1 if @code.include?(i) == true}
		@input.each_with_index do |i, x|
			if @code[x] == i
				@whitecount -= 1
				@redcount += 1
			end
		end
		@previous.push([@input, @whitecount, @redcount])
		@win_condition = true if @redcount == 4
		@whitecount = 0
		@redcount = 0
	end
	def show
		@previous.each_index do |i|
			puts "Guess number #{i+1} was #{@previous[i][0].join(" ")} with #{@previous[i][1].to_s} white and #{@previous[i][2].to_s} red"
		end


	end


	attr_accessor :code, :whitecount, :redcount, :previous, :win_condition

end



def mastermind
	board = Board.new
	board.new_code
		12.times do |i|

		board.input
		board.check
		break if board.win_condition == true
		board.show

	end
	if board.win_condition == true
		puts "You win!"
	else
		puts "You lose! The code was #{board.code.join(" ")}"
	end 



end