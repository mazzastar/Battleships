require 'board'

describe Board do
  
	context "Initial conditions" do
		let(:board){Board.new}
		it "an initial opponent_view should have only have empty strings" do
			# board = Board.new
 			expected = board.opponent_view.inject(0){|acc, row| acc+row.count("")}
 			expect(expected).to eq 100
		end

		it "an initial player_view should have 6's' " do
		  	expected = board.rows.inject(0){|acc, row| acc+row.count("s")}
		  	expect(expected).to eq 6
		end

		it "should convert string 'A1' into coordinates array [0,0]" do
			expected = [0,0]
			expect(board.convert("A1")).to eq expected		  
		end

		it "should identify A1 as a ship " do
			expected = 's'
			expect(board.identify_cell("A1")).to eq expected		  
		end

		it "should identify A2 as a water " do
			expected = ""
			expect(board.identify_cell("A2")).to eq expected		  
		end

		it "should register a shot at A1" do
			puts "####################"
			expected = "x"
			expect(board.register_shot("A1")).to eq expected		  
		end

		# it "should register a miss at A2" do
		#   puts "####################"
		#   expected = "o"
		#   expect(board.register_shot("A2")).to eq expected
		# end

	end	


end
