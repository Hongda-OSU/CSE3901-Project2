class Player 
    # initialize the player's arrtibute: name and score
    attr_accessor :name, :score
    def initialize(name)
        @name = name
        @score = 0
    end

    # add player's score with 1
    def add_score
        @score += 1
    end
    
    # return player's name
    def get_name
        @name
    end
    
     # return player's score
    def get_score
        @score
    end
end
    
