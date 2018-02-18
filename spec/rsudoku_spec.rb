describe RSudoku do
  describe ".new" do
    subject(:rsudoku) { RSudoku.new }

    it "should build a 3x3 assortment of boards as a standard sudoku board" do
      expect(rsudoku.board.count).to be 9
    end
  end
end
