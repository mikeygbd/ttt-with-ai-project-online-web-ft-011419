class Board

  attr_accessor :cells

  def initialize
    reset!
    # @cells = [" ", " ", " ", " ", " ", " ", " ", " ", " "]

  end

  def reset!
    @cells = Array.new(9, " ")
  end

  def display
    puts " #{@cells[0]} | #{@cells[1]} | #{@cells[2]} "
    puts "-----------"
    puts " #{@cells[3]} | #{@cells[4]} | #{@cells[5]} "
    puts "-----------"
    puts " #{@cells[6]} | #{@cells[7]} | #{@cells[8]} "
  end

  def position(input)
    i = input.to_i
    @cells[i-1]
  end

  def update(position, player)
     pos = position.to_i
     @cells[pos - 1] = player.token
  end

    def full?
      if @cells.detect do |i|
        i == " " || i == nil
        false
      else
        true
        end
      end
    end



end
