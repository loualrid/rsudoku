class RSudoku
  module Constructors
    # Create a new board with the symbol representing size values. Initialize as
    #   multi-dim array of nils
    #
    # @param [Symbol] board_size The board_size to use.
    #
    # @return [RSudoku]
    #
    # @example
    #   RSudoku.initialize_board #=> #<RSudoku>
    def initialize_board(board_size)
      case board_size
      when :three_by_three
        @board = [([([nil] * 3 )] * 3 )] * 9
      else
        raise ArgumentError, "Unsupported board size"
      end
    end
    alias_method :new_board, :initialize_board
  end
end
