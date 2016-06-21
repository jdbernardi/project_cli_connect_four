require 'pry'
class ConnectFour

attr_accessor :current_player

	def initialize

		@board = Board.new

		if num_players == 1

			@player1 = Player.new( "Player 1", :R, @board )
			@player2 = CPU.new( "Computer", :B, @board)

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

		loop do

			@board.render

			@current_player.get_move

			display_win if @board.victory?( @current_player.piece )

			display_draw if @board.draw?

			change_turns( @current_player )

		end

	end


	def display_win

		@board.message("#{current_player.name} wins!")
		@board.render
		game_reset

	end

	def display_draw

		@board.message("It's a draw! Let's play again!")
		@board.render
		game_reset

	end



	def game_reset
		ConnectFour.new
	end



	#taking turns
	def change_turns( current_player )

		# alternate p1/p2
		current_player == @player1 ? @current_player = @player2 : 																 @current_player = @player1


	end

# ending the game




end

