class RSudoku
  # Creates a new RSudoku object
  #
  # @param [Object] obj A multi-dim array representing an unsolved sudoku board,
  #   in the format [[[1,2, nil], [4, nil, nil], nil, 8, 9], [1, nil, 3], ...], or nil
  #
  # @return [RSudoku]
  #
  # @example
  #   RSudoku.new(ARR)
  #   RSudoku.new
  #   Money.new(100, "EUR") #=> #<Money @fractional=100 @currency="EUR">
  #
  def initialize(obj = nil)
    @board = obj
  end
end
