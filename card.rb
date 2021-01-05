class Card
    attr_reader :face_up , :letter

    def initialize(letter)
        @face_up = false
        @letter = letter
    end

    def hide
        @face_up = false
    end

    def reveal
        @face_up = true
    end

    def ==(other)
        self.letter == other.letter
    end


end


if __FILE__ == $PROGRAM_NAME
    card = Card.new("A")
#    p card.hide
    # p card.reveal
    # p card.face_up
    p card.letter
end
