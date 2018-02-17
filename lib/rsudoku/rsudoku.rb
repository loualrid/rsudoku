class RSudoku
  # Creates a new RSudoku object
  #
  # @param [Object] obj A multi-dim array representing an unsolved sudoku board,
  #   in the format [[[1,2, nil], [4, nil, nil], nil, 8, 9], [1, nil, 3], ...],
  #   or nil
  #
  # @return [RSudoku]
  #
  # @example
  #   RSudoku.new(ARR)
  #   RSudoku.new
  #
  def initialize(obj = nil)
    @board = obj
  end

  # @!attribute [r] boards
  #   @return [boards] An array of the sudoku boards.

  attr_reader :boards

  class << self

    # @!attribute [rw] default_board_size
    #   @return [Integer] Use this to specify the default board size for new
    #     sudoku boards
    attr_accessor :default_board_size
  end

  def self.setup_defaults
    # Default to 3x3 Boards
    self.default_board_size = :three_by_three
  end

  def self.inherited(base)
    base.setup_defaults
  end

  setup_defaults

  # Common inspect function
  #
  # @return [String]
  def inspect
    "#<#{self.class.name}"
  end
end
