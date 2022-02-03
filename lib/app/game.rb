require 'pry'
require_relative 'player'
require_relative 'board'
require_relative 'boardcase'
require_relative 'application'
require_relative '../views/show'

class Game
  attr_accessor :player1, :player2

#initialisation de la class Game
  def initialize 
    @player1 = player1_init()
    @player2 = player2_init(player1)
    jeu = lets_go()
    game_round(jeu, player1, player2)
  end

#methode pour créer le player 1
  def player1_init 
    puts "\n"
    puts "--------------------".white.on_red
    puts "|     Joueur 1     |".white.on_red
    puts "--------------------".white.on_red
    puts "\n\n"
    puts "Quelle est ton nom ?"
    print "> "
    name = gets.chomp
   
    puts "\nQuelle signe souhaites-tu avoir ?"
    puts "1 - X"
    puts "2 - O"
    puts "3 - \u{1f600}"
    puts "4 - \u{1f609}"
    puts "5 - \u{1f618}"
    puts "6 - \u{1f30f}"
    puts "7 - \u{1f42f}"
    puts "8 - \u{1f418}"
    puts "9 - \u{1f43c}"
    puts "10 - \u{1f349}"
    puts "11 - \u{1f344}"
    print "> "
    sign = gets.chomp.to_i

    while sign < 0 || sign > 11
      puts "Merci de choisir un chiffre entre 1 et 11"
      print "> "
      sign = gets.chomp.to_i
    end

    case sign
      when 1
        sign = "X"
      when 2
        sign = "O"
      when 3
        sign = "\u{1f600}"
      when 4
        sign = "\u{1f609}"
      when 5 
        sign = "\u{1f618}"
      when 6
        sign = "\u{1f30f}"
      when 7
        sign = "\u{1f42f}"
      when 8
        sign = "\u{1f418}"
      when 9
        sign = "\u{1f43c}"
      when 10 
        sign = "\u{1f349}"
      when 11
        sign = "\u{1f344}"
      end
    
    player1 = Player.new(name,sign)

    puts "\n\nBienvenue #{player1.name} tu auras donc pour signe : #{player1.sign}\n\n"
    puts "-"*30
    
    return player1
  end

#methode pour créer le player 2 
  def player2_init (player1)
    puts "\n"
    puts "--------------------".white.on_blue
    puts "|     Joueur 2     |".white.on_blue
    puts "--------------------".white.on_blue
    puts "\n\n"
    puts "Quelle est ton nom?"
    print '> '
    name = gets.chomp

    puts "\nQuelle signe souhaites-tu avoir ?"
    puts "1 - X"
    puts "2 - O"
    puts "3 - \u{1f600}"
    puts "4 - \u{1f609}"
    puts "5 - \u{1f618}"
    puts "6 - \u{1f30f}"
    puts "7 - \u{1f42f}"
    puts "8 - \u{1f418}"
    puts "9 - \u{1f43c}"
    puts "10 - \u{1f349}"
    puts "11 - \u{1f344}"
    print "> "
    sign = gets.chomp.to_i

    while sign < 0 || sign > 11
      puts "Merci de choisir un chiffre entre 1 et 11"
      print "> "
      sign = gets.chomp.to_i
    end

    case sign
      when 1
        sign = "X"
      when 2
        sign = "O"
      when 3
        sign = "\u{1f600}"
      when 4
        sign = "\u{1f609}"
      when 5 
        sign = "\u{1f618}"
      when 6
        sign = "\u{1f30f}"
      when 7
        sign = "\u{1f42f}"
      when 8
        sign = "\u{1f418}"
      when 9
        sign = "\u{1f43c}"
      when 10 
        sign = "\u{1f349}"
      when 11
        sign = "\u{1f344}"
    end

    while player1.sign == sign
      puts "Vous ne pouvez pas avoir le même signe que #{player1.name} merci d'en selectionner un nouveau"
      print "> "
      sign = gets.chomp.to_i

      while sign < 0 || sign > 11
      puts "Merci de choisir un chiffre entre 1 et 11"
      print "> "
      sign = gets.chomp.to_i
      end

      case sign
        when 1
          sign = "X"
        when 2
          sign = "O"
        when 3
          sign = "\u{1f600}"
        when 4
          sign = "\u{1f609}"
        when 5 
          sign = "\u{1f618}"
        when 6
          sign = "\u{1f30f}"
        when 7
          sign = "\u{1f42f}"
        when 8
          sign = "\u{1f418}"
        when 9
          sign = "\u{1f43c}"
        when 10 
          sign = "\u{1f349}"
        when 11
          sign = "\u{1f344}"
      end

    end
    player2 = Player.new(name,sign)    
    puts "\n\nBienvenue #{player2.name} tu auras donc pour signe : #{player2.sign}\n\n"

    puts "-"*30
    return player2
  end

#méthode qui affiche les règles du jeu
  def lets_go
    puts "\n\nLes deux adversaires seront donc: #{player1.name} et #{player2.name}!\n\n"
    puts "Que le jeu commence !\n\n"

    puts "-----------------------------".black.on_green
    puts "|     Voici les règles:     |".black.on_green
    puts "-----------------------------".black.on_green
    puts "\n\n"

    puts "Voulez vous voir les règles ? (o/n)"
    print "> "
    value = gets.chomp
    until value == "o" || value == "n"
      puts "merci de choisir o ou n"
      print "> "
      value =  gets.chomp 
    end
    if value == "o"
      puts "\n\nChoisissez chacun votre tour un chiffre entre 1 et 9 (cf tableau blanc ci-dessous) afin d'arriver à la victoire\n"
      jeu = Board.new
      return jeu
    else
      jeu = Board.new
      return jeu
    end
    puts "-"*30
  end
  
#méthode pour commencer les tours de jeu
  def game_round(jeu, player1, player2)
    while jeu.array_count > 0 
      player_play(jeu,player1)
        if jeu.win_H1(player1.sign*3) == true
          puts "Voici le tableau final\n\n"
          jeu.current_game
          puts "\nFélicitations mon cher #{player1.name}, quelle belle victoire!!\n\n"
          break #break si joueur 1 à win
        end
    
      if jeu.array_count == 0 
        jeu.current_game
        puts "\n\nOh! Une égalité, tant d'effort pour rien!"
          break #break si égalité 
      else
        player_play(jeu,player2)

        if jeu.win_H1(player2.sign*3) == true
          puts "Voici le tableau final\n\n"
          jeu.current_game
          puts "\nFélicitations mon cher #{player2.name}, quelle belle victoire!!\n\n"
          break #break si joueur 2 à win
        end
      end
    end
  end

#méthode pour faire jouer un joueur
  def player_play(jeu, player)
    puts "\n\nVas y #{player.name} choisis une case pour mettre ton signe : #{player.sign}\n\n"
    
    jeu.rules
    
    puts"\n\nVoici le plateau actuel:\n\n"
    
    jeu.current_game
    
    puts "Choississez votre case :"
    print "> "
    choice_player = gets.chomp.to_i

      until (1..9).cover?(choice_player) && jeu.array_fetch(choice_player-1) == " "
        puts "Choisisses une case valide"
        choice_player = gets.chomp.to_i
      end
    
    jeu.case[choice_player-1].replace(player.sign)
    puts "\n\n"
    puts "-"*30
  end
  
end


#binding.pry