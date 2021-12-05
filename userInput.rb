require_relative 'card.rb'
require_relative 'deck.rb'
require_relative 'check.rb'
require_relative 'table.rb'
require_relative 'player.rb'

def user_input(table, deck, player)
    input = display_info(table, deck)
    
    #check user's choice
    until input.chomp.eql? 'q' do # if user choose 'q' then quit the game
        if input.chomp.eql? 's' 
            indexArray = []
            loop do
                indexArray = ask_for_set # ask user to choose their choices of the set
                # check if the choice is vaild
                if is_valid_input(indexArray, table)
                    break
                end
            end
            setArray = generate_set_array(indexArray, table)
            # check if user's choices can set up as a set
            if checkset(setArray[0], setArray[1], setArray[2])
                puts "You found a Set! Great!"
                setArray.each{ |card| table.delete_card(card)} #delete cards on the table
                # add one point to player's score
                player.add_score
                table.add_three_cards(deck)
            else
                puts "No it isn't a Set! Try Again!"
            end
        elsif input.chomp.eql? 'p' # if user choose 'p' then add 3 more cards to the table
            table.add_three_cards(deck)
        elsif input.chomp.eql? 'g' # if user choose 'g' then print out user's name and score to check their status
            print "\nPlayer: " + player.get_name.to_s + "Score: " + player.get_score.to_s + "\n" 
        end
        puts "\n"
        input = display_info(table, deck)
    end
end

# show up the display massage
def display_info(table, deck)
    table.show_table
    puts "\n"
    input = user_selection
end

# get user's option
def user_selection
    puts "Enter 's' to call SET, 'p' to place three more cards, 'g'to check your scores, 'q' to Quit:"
    input = gets
end

# get user's choice of the set
def ask_for_set
    puts "Enter numbers representing 3 cards separated by spaces(e.g. 3 7 10): "
    set = gets.to_s
    indexArray = set.split(" ")
end

# store user's choice of the set
def generate_set_array(indexArray, table)
    setArray = []
    for i in 0..2
        setArray << table.get_card(indexArray[i].to_i-1)
    end
    setArray
end

# check if user's input is vaild
def is_valid_input(indexArray, table)
    res = true
    if indexArray.length() != 3
        res = false
    elsif indexArray.uniq.length != indexArray.length #check for duplicates
        res = false
    else
        indexArray.each do |index|
            if !is_number?(index)
                res = false
            elsif index.to_i <= 0 || index.to_i > table.length
                res = false
            end
        end
    end
    return res
end

# check if user enter a vaild input
def is_number?(string)
    true if Integer(string) rescue false
end

