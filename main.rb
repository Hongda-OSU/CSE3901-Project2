require_relative 'userInput.rb'
require_relative 'card.rb'
require_relative 'deck.rb'
require_relative 'table.rb'
require_relative 'check.rb'
require_relative 'player.rb'

puts "Welcome to Set Game!\n"

# get player's name
puts "Please enter your name:"
name = gets

# generate the game
deck = Deck.new
table = Table.new
player = Player.new(name)
table.start_game(deck)
user_input(table, deck, player)

# if player choose to quit, then print his/her final score and quit
puts "\nPlayer " + player.name.chomp + "'s final score is: " + player.score.to_s
puts "Thanks for playing Set Game!"

