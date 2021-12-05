# The_DeathWishers

# Lab 2: The Game of Set
  Date: 16/09/2020

## Installation Instruction
### Install
   There are any other Plug-in software u need to install, just make sure you've installed ruby v2.6.6 already  
   if you aren't sure how to install ruby v2.6.6, here is a sample instruction on **Ubuntu** at the below link:  
   > [Installing the Vitual Machine at Home](https://cse-3901-soundarajan.netlify.app/resources/vm-install)

### Usage
   To run the game, type the following command  
   `ruby main.rb`  

## Game Introduction
   
### Game Functions (Project Class)
shape (diamond, oval, or squiggle)
color (red, green, or purple)
number (one, two, or three)
shading (empty, slashed, or filled)

Goal:
The goal of the game is to take the most number of “Sets” possible where a set consists of: 3 cards are a Set if the characteristic (shape, color, number, shading) is the same or distinct for each of the cards. 

Properties: 
More precisely three cards from a SET if each of the following hold true: 
all cards have the same shape OR all cards have different shapes, 
all cards have the same color OR all cards have different colors, 
all cards have the same number OR all cards have different numbers, 
all cards have the same shading OR all cards have different shading. 

Rule:
The game of Set begins with 12 cards being placed on the table, however, it is possible for there to be no Sets amongst the 12 cards.

If a player sees three cards that form a Set they say “Set!” and grab the three cards. 
The dealer adds more cards to the table as they are taken away. 
If after a few minutes no one has found a Set the dealer adds three more cards; repeating until someone finds a Set. 
The game ends when all the cards have been dealt and no one can find any more Sets. The player with the most Sets at the end of the game wins!


Something important:
Each combination of shape, color, number, and shading appears exactly once in a Set deck.
num _card = (# colors) · # shapes) · # numbers) · # fills) = 3 · 3···3 · 3 = 34 = 81

    

