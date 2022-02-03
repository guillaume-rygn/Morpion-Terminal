#require 'pry'
require_relative 'game'
require_relative 'board'
require_relative 'boardcase'
require_relative 'player'
#require_relative './views/show'

class Application
  attr_accessor :continue

#initilisation des parties
  def initialize
    welcome()
    @continue = true
    while @continue == true
      Game.new
      puts "-"*30
      continue?()
    end
    puts "\n\n"
    puts "---------------------------------------------------------"
    puts "|           Merci d'avoir joué à notre jeu !            |"
    puts "|          codé par Bastien \u{1f43c} et Guillaume \u{1f418}          |"
    puts "---------------------------------------------------------"
    puts "\n\n"
  end
 
#méthode pour continuer
  def continue?
    puts "Voulez vous rejouer ?(o/n)"
    print "> "
    continue = gets.chomp
    until continue == "o" || continue == "n"
      puts "Merci de choisir o pour oui et n pour non"
      print "> "
      continue = gets.chomp
    end
    
    if continue == "o"
      @continue = true
    else
      @continue = false
    end
  end

#écran de bienvenue
  def welcome
    puts "\n\n"
    puts "----------------------------------------------------------------".black.on_green
    puts "|                                                              |".black.on_green
    puts "|              Bienvenue au MORPION TERMINAL                   |".black.on_green
    puts "|                                                              |".black.on_green  
    puts "----------------------------------------------------------------".black.on_green  
    puts "\n\n"
  end
end