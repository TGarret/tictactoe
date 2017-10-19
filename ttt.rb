
class BoardCase
  #TO DO : la classe a 2 attr_accessor, sa valeur (X, O, ou vide), ainsi que son numéro de case)
  
  attr_accessor :value, :case_number
  
  def initialize (value, case_number)
    #TO DO doit régler sa valeur, ainsi que son numéro de case
    @value = "X" || "O" || ""
    @case_number = case_number
  end
  
  def value_to_s
    #TO DO : doit renvoyer la valeur au format string
    @value = @value.to_s
    return @value
end

class Board
  include Enumerable
  #TO DO : la classe a 1 attr_accessor, une array qui contient les BoardCases
	attr_accessor :array 
		@array = []
		#@array = ["","","","","","","","",""]

  def initialize 
    #TO DO :
    #Quand la classe s'initialize, elle doit créer 9 instances BoardCases
    #Ces instances sont rangées dans une array qui est l'attr_accessor de la classe
  	@array<<BoardCase.new('1')<<BoardCase.new('2')<<BoardCase.new('3')<<BoardCase.new('4')
  	@array<<BoardCase.new('5')<<BoardCase.new('6')<<BoardCase.new('7')<<BoardCase.new('8')	
	  @array<<BoardCase.new('9')	

  end

  def print_board
  #TO DO : afficher le plateau
    puts "| #{array["1"]} | #{array["2"]} | #{array["3"]} |"
    puts "+- | -+- | -+- | -+"
    puts "| #{array["4"]} | #{array["5"]} | #{array["6"]} |"
    puts "+- | -+- | -+- | -+"
    puts "| #{array["7"]} | #{array["8"]} | #{array["9"]} |"
    puts "+- | -+- | -+- | -+"
  end


  def play (player, symbol)
    #TO DO : une méthode qui change la BoardCase jouée en fonction de la valeur du joueur (X, ou O)
  	puts "Quelles cases voulez vous jouer ? (9 choix possibles)"
  		case_jouée = gets.chomp
      select @case
  		if @case.value == '' @case.value = @symbol
      else puts "Choisissez une autre case"
  	end

  
 end

  def victory
    #TO DO : qui gagne ?

	winning_combo = [[1, 2, 3], [4, 5, 6], [7, 8, 9], [1, 4, 7], [2, 5, 8], [3, 6, 9], [1, 5, 9], [3, 5, 7]]

	#switch
  return true
	puts "We got a winner !"
end






class Player
	attr_accessor :name, :symbol
	attr_writer :score

	def initialize(name, symbol)
		@name = name
		@symbol = symbol
		@score = nil
	end

end
	attr_accessor :name, :symbol
	attr_writer :score

	def initialize(name, symbol)
		@name = name
		@symbol = symbol
		@score = nil
	end

end

class Game
	def initialize
	    @player_1 = Player.new('Player_1', 'X')
	    @player_2 = Player.new('Player_2', 'O')
	    @board = Board.new
	end

	def go
		@next_player = playerX
	end

	def turn
		    #TO DO : affiche le plateau, demande au joueur il joue quoi, vérifie si un joueur a gagné, passe au joueur suivant si la partie n'est pas finie
        
        while winner() == false
        print_board()


	end

end

Game.new.go


end #endif