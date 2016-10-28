class Board
	def initialize
		@spot1 = 1
		@spot2 = 2
		@spot3 = 3
		@spot4 = 4
		@spot5 = 5
		@spot6 = 6
		@spot7 = 7
		@spot8 = 8
		@spot9 = 9
	end

	attr_accessor :spot1, :spot2, :spot3, :spot4, :spot5, :spot6, :spot7, :spot8, :spot9

	def show
		puts "#{@spot1} | #{@spot2} | #{@spot3}"
		puts "---------"
		puts "#{@spot4} | #{@spot5} | #{@spot6}"
		puts "---------"
		puts "#{@spot7} | #{@spot8} | #{@spot9}"
	end

end

def tictactoe
	gameboard = Board.new
	toggle = 2
	if toggle%2 == 0
		player = "X"
	else
		player = "O"
	end
	win_condition = false
	9.times do
		
		if toggle%2 == 0
			player = "X"
		else
			player = "O"
		end
		
		gameboard.show
		puts "Player #{player} pick a square!"
		input = gets.chomp
		
		if input == "1" && (gameboard.spot1 == 1)
			gameboard.spot1="#{player}"
		elsif input == "2" && (gameboard.spot2 == 2)
			gameboard.spot2="#{player}"
		elsif input == "3" && (gameboard.spot3 == 3)
			gameboard.spot3="#{player}"
		elsif input == "4" && (gameboard.spot4 == 4)
			gameboard.spot4="#{player}"
		elsif input == "5" && (gameboard.spot5 == 5)
			gameboard.spot5="#{player}"
		elsif input == "6" && (gameboard.spot6 == 6)
			gameboard.spot6="#{player}"
		elsif input == "7" && (gameboard.spot7 == 7)
			gameboard.spot7="#{player}"
		elsif input == "8" && (gameboard.spot8 == 8)
			gameboard.spot8="#{player}"
		elsif input == "9" && (gameboard.spot9 == 9)
			gameboard.spot9="#{player}"
		else
			puts "Invalid square, try again"
			puts gameboard.spot1
			redo
		end
		
		gameboard.show
		if gameboard.spot1 == player && gameboard.spot2 == player && gameboard.spot3 == player
			win_condition = true
			puts "Player #{player} wins!"
			break
		elsif gameboard.spot4 == player && gameboard.spot5 == player && gameboard.spot6 == player
			win_condition = true
			puts "Player #{player} wins!"
			break
		elsif gameboard.spot7 == player && gameboard.spot8 == player && gameboard.spot9 == player
			win_condition = true
			puts "Player #{player} wins!"
			break
		elsif gameboard.spot1 == player && gameboard.spot4 == player && gameboard.spot7 == player
			win_condition = true
			puts "Player #{player} wins!"
			break
		elsif gameboard.spot2 == player && gameboard.spot5 == player && gameboard.spot8 == player
			win_condition = true
			puts "Player #{player} wins!"
			break
		elsif gameboard.spot3 == player && gameboard.spot6 == player && gameboard.spot9 == player
			win_condition = true
			puts "Player #{player} wins!"
			break
		elsif gameboard.spot1 == player && gameboard.spot5 == player && gameboard.spot9 == player
			win_condition = true
			puts "Player #{player} wins!"
			break
		elsif gameboard.spot3 == player && gameboard.spot5 == player && gameboard.spot7 == player
			win_condition = true
			puts "Player #{player} wins!"
			break
		end
		toggle += 1

	end


end