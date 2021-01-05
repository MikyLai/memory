require_relative "card.rb"

class Board
    attr_reader :grid

    def initialize
        grid_letters = []
        letters = ("A".."Z").to_a.shuffle

        while grid_letters.length <= 10
            used_letter = letters.pop
            2.times{grid_letters << used_letter}
        end
        grid_letters.shuffle!
        @grid = []
        3.times { @grid << grid_letters.slice!(0,3).map{|char| Card.new(char)} }
        
        
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
        return nil
    end

    def display
        @grid.each do |row|
            puts row.map{ |card| card.face_up ? card.letter : "_" }.join(" ")
        end
    end
end

if __FILE__ == $PROGRAM_NAME
    b = Board.new
    # p b.grid
    # p b[0, 1]
#    p Board.print(b.grid)
    b.display
end
