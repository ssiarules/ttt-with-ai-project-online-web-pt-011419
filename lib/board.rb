require 'pry'
class Board
  attr_accessor :cells

  @cells []

  def initialize
    reset! #! forces the method to do something.
  end

  def reset!
  @cells = Array.new(9," ") #setting @cells instant variable back to a new array with 9 position and each just having an empty string in it.
  end

  def display
    puts " #{cells[0]} | #{cells[1]} | #{cells[2]} "
    puts "-----------"
    puts " #{cells[3]} | #{cells[4]} | #{cells[5]} "
    puts "-----------"
    puts " #{cells[6]} | #{cells[7]} | #{cells[8]} "
  end

  def position(input)
    cells[input.to_i-1]
  end

  def full?
    @cells.all? {|full_board|full_board != " "}
  end

  def turn_count
    self.cells.count {|move|move != " "}
  end

def taken?(input)
  if cells[input.to_i-1] != " "
    true
  else
    false
   end
 end

   def valid_move?(input)
     input = input.to_i-1
     if (input >= 0)  && (input < 10) && (self.cells[input] == " ")
       true
     else
       false
    end
  end

  def update(input, player)
    if valid_move?(input)
      self.cells[input.to_i-1] = player.token
      #binding.pry
    end
  end
end
