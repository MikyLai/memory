require_relative "board.rb"
require_relative "card.rb"

class Memory

    def initialize
        @board = Board.new
        @previous_guess = nil
        @game_over = false
    end

    def play
        until @game_over
            play_round
        end

        puts "YOU WON !!"
        
    end

    def play_round
        @board.display
        puts "Please enter a position with coordinates. Separated with comma like '4,7'"
        row,col = gets.chomp.split(",").map{|n| n.to_i}
        @board[row,col].reveal
        @board.display
        @previous_guess = @board[row,col]

        puts "Please enter another position with coordinates. Separated with comma like '4,7'"
        row,col = gets.chomp.split(",").map{|n| n.to_i}
        @board[row,col].reveal
        @board.display

        if @previous_guess == @board[row,col]
            @game_over = true
        end
        
    end

    
end

if __FILE__ == $PROGRAM_NAME
    g = Memory.new
    g.play
end
