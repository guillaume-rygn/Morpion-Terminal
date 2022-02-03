#require 'pry'
require_relative '../app/player'
require_relative '../app/board'
require_relative '../app/boardcase'
require_relative '../app/application'
require_relative '../app/game'

class Show < Board
  
#initialisation du display plateau de jeu héritant des propriétés de Boardcase
  def initialize
    super 
      puts "-------------------"
      puts "|  #{@A1}  |  #{@A2}  |  #{@A3}  |"
      puts "-------------------"
      puts "|  #{@B1}  |  #{@B2}  |  #{@B3}  |"
      puts "-------------------"
      puts "|  #{@C1}  |  #{@C2}  |  #{@C3}  |"
      puts "-------------------"
  end
  
end