class Card
    # initialize four properties of the card: Number, Shape, Shading, Color
    attr_reader :number, :shape, :shading, :color
    def initialize(number = "", shape = "", shading = "", color = "")
        @number = number
        @shape = shape
        @shading = shading
        @color = color
    end
    
    # Convent the card property into string
    def to_s
        @number + " " + @shape + " " + @shading + " " + @color
    end
end
