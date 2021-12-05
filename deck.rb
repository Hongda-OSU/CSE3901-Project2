require_relative 'card.rb'

class Deck
  # four arrays to story each three arrtibutes of the card properties 
  Number = ["1", "2", "3"]
  Shape = ["dimond", "squiggle", "oval"]
  Shading = ["solid", "empty", "striped"]
  Color = ["red", "green", "purple"]

   def initialize
     @deck = Array.new

     # the initial fop loop to create a deck contains all cards
     for i in 0..2
       for j in 0..2
         for k in 0..2
           for n in 0..2
             card = Card.new(Number[n], Shape[j], Shading[k] ,Color[i])
             @deck.push(card)
           end
         end
       end
     end
   end

  # return the card at specified index
   def get_card(index)
      @deck[index]
   end

  # delete the specified card
   def deleteCard(card)
      @deck.delete(card)
   end

  # return the length of the deck
   def length
      @deck.length()
   end

end

