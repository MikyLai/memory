require_relative "card.rb"

class Board
    attr_reader :grid

    def initialize
        card = []
        letters = ("A".."Z").to_a.shuffle

        while card.length <= 10
            used_letter = letters.pop
            2.times{card << used_letter}
        end
        card.shuffle!
        @grid = []
        3.times { @grid << card.slice!(0,3)}
      
    end

    def [](row,col)
        @grid[row][col]
    end

    def []=(row,col,value)
        @grid[row][col] = value
    end

    def self.print(grid)
        grid.each do |row|
            puts row.join(" ")
        end
     
    end


end

if __FILE__ == $PROGRAM_NAME
   b = Board.new
   p b.grid
   b[0,1] = "donkey"
   p b[0, 1]


end
