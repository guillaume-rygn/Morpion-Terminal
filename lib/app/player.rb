#require 'pry'
require_relative 'game'
require_relative 'board'
require_relative 'boardcase'
require_relative 'application'
#require_relative './views/show'

class Player
  attr_accessor :name, :sign

#initilisation du joueur
  def initialize (name, sign)
    @name = name
    @sign = sign
  end

end
