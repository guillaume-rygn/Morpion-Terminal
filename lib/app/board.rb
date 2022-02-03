#require 'pry'
require_relative 'game'
require_relative 'player'
require_relative 'boardcase'
require_relative 'application'
#require_relative './views/show'

class Board < Boardcase
  
#initialisation du plateau de jeu héritant des propriétés de Boardcase
  def initialize
    super
  end

#affichage du tableau de sélection
  def rules
    puts "-------------------".black.on_white
    puts "|  1  |  2  |  3  |".black.on_white
    puts "-------------------".black.on_white
    puts "|  4  |  5  |  6  |".black.on_white
    puts "-------------------".black.on_white
    puts "|  7  |  8  |  9  |".black.on_white
    puts "-------------------".black.on_white
  end

#affichage du plateau de jeu à un instant T
  def current_game
     puts "-------------------"
     puts "|  #{@A1}  |  #{@A2}  |  #{@A3}  |"
     puts "-------------------"
     puts "|  #{@B1}  |  #{@B2}  |  #{@B3}  |"
     puts "-------------------"
     puts "|  #{@C1}  |  #{@C2}  |  #{@C3}  |"
     puts "-------------------"
  end
 
end