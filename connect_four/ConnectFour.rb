require 'pry'
class ConnectFour



def initialize

	@board = Board.new
	# get num_players
	# creating the player and/or CPU
	if num_players == 1
		@player1 = Player.new( "Player 1", :R, @board )
		@player2 = CPU.new( "Computer", :B, @board)
	# call
	else
		@player1 = Player.new( "Player 1", :R, @board )
		@player2 = Player.new( "Player 2", :B, @board )
	end


	@current_player = @player1

	run

end

def num_players
	# prompt to start games and generate player/cpu
	begin

		@board.message(%q(How many players? Enter: 1 or 2))
		input = gets.strip.to_i

  end until input == 1 || input == 2

	return input

end


def run

	begin
		@board.render

		@current_player.get_move

	end until draw? || victory?

end
# the game will handle




#taking turns
def change_turns

	# alternate p1/p2

end



# checking if there's room to drop the piece



# tracking pieces
def pieces_left

	# may not need -- board full can be the determining factor

end

# determining victory
def victory?

	#find if 4 colors are in a row

end
# determining a draw

def draw?

	# are all the pieces placed...or board full?

end
# ending the game




end