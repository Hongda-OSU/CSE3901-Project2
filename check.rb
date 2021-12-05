require_relative 'card.rb'

def checkset (card1, card2, card3) #check if these three cards are set
    num_res = compare(card1.number, card2.number, card3.number)
    shape_res = compare(card1.shape, card2.shape, card3.shape)
    shading_res = compare(card1.shading, card2.shading, card3.shading)
    color_res = compare(card1.color, card2.color, card3.color)

    if num_res && shape_res && shading_res && color_res
        true
    else
        false
    end
end

def compare (x, y ,z) #return true if three elements are the same or different
    xy = x == y
    xz = x == z
    yz = y == z

    if xy && xz # x = y = z
        true
    elsif !(xy || xz || yz) # x != y != z
        true
    else   
        false
    end
end
