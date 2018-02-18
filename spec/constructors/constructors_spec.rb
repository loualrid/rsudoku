describe RSudoku::Constructors do

  describe "::initialize_board" do
    it "creates a new RSudoku instance with boards equal to 9" do
      boards = RSudoku.initialize_board(:three_by_three)
      puts "TESTING::#{boards.inspect}"
      expect(boards.count).to eq 9
    end
  end
end
