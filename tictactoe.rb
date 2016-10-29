class Board
	def initialize
		@spots = []
		(1..9).each {|x| @spots.push(x)}
	end

	attr_accessor :spots

	def show
		puts "#{@spots[0]} | #{@spots[1]} | #{@spots[2]}"
		puts "---------"
		puts "#{@spots[3]} | #{@spots[4]} | #{@spots[5]}"
		puts "---------"
		puts "#{@spots[6]} | #{@spots[7]} | #{@spots[8]}"
	end

end

def tictactoe
	gameboard = Board.new
	toggle = 2
	draw = true
	win_condition = false
	if toggle%2 == 0
		player = "X"
	else
		player = "O"
	end
	9.times do
		if toggle%2 == 0
			player = "X"
		else
			player = "O"
		end
		
		gameboard.show
		puts "Player #{player} pick a square!"
		input = gets.chomp
		
		if gameboard.spots[input.to_i - 1] != ("X" || "O")
			gameboard.spots[input.to_i - 1] = player
		else
			puts "Invalid square, try again"
			redo
		end
		
		gameboard.show


		win_condition = true if gameboard.spots[0] == player && gameboard.spots[1] == player && gameboard.spots[2] == player
		win_condition = true if gameboard.spots[4] == player && gameboard.spots[5] == player && gameboard.spots[6] == player
		win_condition = true if gameboard.spots[7] == player && gameboard.spots[8] == player && gameboard.spots[9] == player
		win_condition = true if gameboard.spots[0] == player && gameboard.spots[3] == player && gameboard.spots[6] == player
		win_condition = true if gameboard.spots[1] == player && gameboard.spots[4] == player && gameboard.spots[7] == player
		win_condition = true if gameboard.spots[2] == player && gameboard.spots[5] == player && gameboard.spots[8] == player
		win_condition = true if gameboard.spots[0] == player && gameboard.spots[4] == player && gameboard.spots[8] == player
		win_condition = true if gameboard.spots[2] == player && gameboard.spots[4] == player && gameboard.spots[6] == player
		draw = false if win_condition == true
		break if win_condition == true

		toggle += 1

	end
	puts "Draw!" if draw == true
	puts "Player #{player} wins!" if win_condition == true
end