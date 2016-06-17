
require 'pry'

class Player


attr_accessor :board, :name, :piece

	def initialize( name = "Joe", piece, board )

		@name = name
		@piece = piece
		@board = board


	end






	# player one will get Red
	# player 2 will get Blue

	# the board will be displayed
	# player one will make their first move
	def get_move( column = nil )

		loop do

			if @name == "Player 1" || @name == "Player 2"
				column = ask_for_move
			end


			# validate correct column
			if valid_column?( column )

				# then validate column is not full
				if @board.prepare_to_drop( column, @piece )
					break
				end

			end

		end

	end
	# unless the move is invalid

	def valid_column?( column )

	  (1..7) === column

	end





	def ask_for_move

		@board.message("#{@name}#{piece}, enter which column number to place your piece")
		return gets.strip.to_i

	end





	def process_move
	# the piece is dropped

	end
	# then turns will change

	# play will continue with each each move being
	# checked for validitity and if there are 4 in a row
	# A draw will happen if the board is full

end