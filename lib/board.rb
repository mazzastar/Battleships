class Board
	# attr_reader :player

	def initialize(player)
		@player = player
		
		@rows = [
			["s","s","s","s","s","s","","","",""],
			["","","","","","","","","",""],
			["","","","","","","","","",""],
			["","","","","","","","","",""],
			["","","","","","","","","",""],
			["","","","","","","","","",""],
			["","","","","","","","","",""],
			["","","","","","","","","",""],
			["","","","","","","","","",""],
			["","","","","","","","","",""]
		]
		@opponent_view = [
			["","","","","","","","","",""],
			["","","","","","","","","",""],
			["","","","","","","","","",""],
			["","","","","","","","","",""],
			["","","","","","","","","",""],
			["","","","","","","","","",""],
			["","","","","","","","","",""],
			["","","","","","","","","",""],
			["","","","","","","","","",""],
			["","","","","","","","","",""]
		]

	end

	def opponent_view
		@opponent_view
	end

	def rows
		@rows
	end

	def convert(arg)
		table = {A: 0,  B: 1, C: 2, D: 3, E: 4, F: 5, G: 6, H:7, I:8, J:9}
		letter= table[arg[0].capitalize.to_sym]
		number=arg[1..-1].to_i-1
		[letter, number]
	end

	def identify_cell(coordinate)
		column, row = convert(coordinate)
		@rows[row][column]

	end

	def register_shot(coordinate)
		column, row = convert(coordinate)
		symbol = identify_cell(coordinate)
		symbol == "s" ? @rows[row][column]='x' : @rows[row][column]='o'
		symbol == "s" ? @opponent_view[row][column]='x' : @opponent_view[row][column]='o'
		@rows[row][column]
	end

	def owner
		@player.name
	end

end
