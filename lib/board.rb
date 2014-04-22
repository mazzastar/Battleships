class Board
	def initialize
		@rows = 		[
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

	end

	def opponent_view
		[
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
		# puts @rows.inspect
		column, row = convert(coordinate)
		symbol = identify_cell(coordinate)
		# @rows[row][column]='o' if (symbol == "")
		@rows[row][column]='x' if (symbol == "s")
		


	end

end
