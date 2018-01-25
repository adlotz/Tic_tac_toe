# définition de la class Board qui va s'occupe de l'aspect visuel
class Board
	attr_accessor 
	# fonction initialize qui actualise les variables qui lui sont liés
	def initialize
		@c1 = " "
		@c2 = " "
		@c3 = " "
		@c4 = " "
		@c5 = " "
		@c6 = " "
		@c7 = " "
		@c8 = " "
		@c9 = " "

end


 	# fonction play qui apporte les modification sur le damier
def play(choice, symbol)
	
		if choice == "1"
        	@c1 = symbol
        elsif choice == "2"
        	@c2 = symbol
        elsif choice == "3"
        	@c3 = symbol
        elsif choice == "4"
        	@c4 = symbol
        elsif choice == "5"
        	@c5 = symbol
        elsif choice == "6"
        	@c6 = symbol
        elsif choice == "7"
        	@c7 = symbol
        elsif choice == "8"
        	@c8 = symbol
        elsif choice == "9"
        	@c9 = symbol
        else
  end
end

	# fonction graphique comme son nom l'indique, elle structure graphiquement le board et donne l'impression d'un plateau de jeu
def graphique

	top	  = " _______________________" + "     aide"
	line  = "|       |       |       |"
midleline = "|_______|_______|_______|"
      puts ""
      puts top
      puts line
      puts "|   " + @c7 + "   |   " + @c8 + "   |   " + @c9 + "   |" + " 7 |  8  |  9 "
      puts line
      puts midleline
      puts line
      puts "|   " + @c4 + "   |   " + @c5 + "   |   " + @c6 + "   |" + " 4 |  5  |  6 "
      puts line
      puts midleline
      puts line
      puts "|   " + @c1 + "   |   " + @c2 + "   |   " + @c3 + "   |" + " 1 |  2  |  3 "
      puts line
      puts midleline
      puts ""

  end
end
	#fonction boardcase, je n'ai pas réussi a m'en servir malgrès de nombreuse tentative
class BoardCase
	attr_accessor :value

	def initialize(value = ' ')
		@value = value
	end
end

	#fonction player qui enregistre les données des joueurs
class Player
	attr_accessor :name, :symbol

	def initialize(name, symbol)
		@name = name
	end
end

 	#fonction game, elle gère la mécanique de jeu, ce qui définie les différents cycles de la partie
class Game
 	attr_accessor :player1, :player2

    def initialize(player1, symbol1, player2, symbol2)
        @player1 = Player.new(player1, symbol1)
        @player2 = Player.new(player2, symbol2)
        @board = Board.new
        @board.graphique
        start_game
    end
    # le nombre de tour de la partie
	def start_game
        5.times do 
            turn
        end
    end
    # le déroulement d'un tour de jeu
    def turn
    	
    	puts "C'est à #{@@player1} de jouer ! \n
        Selectionnez une case"
        choice = gets.chomp.to_s
        result = @board.play(choice, "X")
        @board.graphique
        puts "C'est à #{@@player2} de jouer! \n
        Selectionnez une case"
        choice = gets.chomp.to_s
        result = @board.play(choice, "O")
        @board.graphique        

    end

end
# fonction qui demande l'identification des joueurs et qui démarre la partie
def start_the_game
       
        puts "Veuillez écrire le nom du Joueur 1"
        joueur1 = gets.chomp.to_s      
        puts "#{joueur1} ton symbol sera X ! "
        symbol1 = "X"
        sleep(1)
        puts "Veuillez écrire le nom du Joueur 2 :"
        joueur2 = gets.chomp.to_s
        puts "#{joueur2} ton symbol sera O ! "
        symbol2 = "O"              
        sleep(2)
	@@player1 = joueur1
	@@player2 = joueur2
        game = Game.new(joueur1, symbol1, joueur2, symbol2)
        game.start_game
    end


# appel de la fonction
start_the_game