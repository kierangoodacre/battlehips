require_relative 'cell'


class Board

  attr_reader :board, :coords

  include Cell

    def initialize
      setup_board!
    end

    def create_cells
      ('a'..'j').each do |letter|
        (1..10).each do |number|
          board["#{letter}#{number}"] = property
        end
      end
    end

    def board_empty_hash
      @board = {}
    end

    def setup_board!
      board_empty_hash
      create_cells
    end

    def grid
      board
    end

    def empty_coord_array
       @coords = []
    end

    def shovel(coord)
      coords << coord
    end

    def place ship, orientation, coord
      empty_coord_array
      shovel(coord)
      ship.size.times do
        if orientation == 'vertical'
        coord = coord.reverse.next.reverse
        elsif orientation == 'horizontal'
        coord = coord.next
        else 'please enter correct orientation'
      end
        coords << coord
      end
       coords.each { |coord| @board[coord] = :ship }
    end

    def receive_hit! coord
        @board[coord] = :miss! if @board[coord] == property 
        @board[coord] = :hit! if  @board[coord] == :ship
    end

end


