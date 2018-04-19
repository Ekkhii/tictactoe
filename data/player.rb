class Player
  attr_accessor :nom, :token, :win

#initialisation de la classe player 
  def initialize
    @nom = ""
    @token= ""
    @win = false

  end

  def infos
 
#choix du nom du joueur
  	puts "Quel est le nom du joueur?"
  	@nom = gets.chomp
#choix du token (signe) du joueur
  	puts "Quel signe veux tu ? X ou O?"
  	@token = gets.chomp.to_s
    	until @token == "X" || @token == "O"
        puts "Quel signe veux tu? X ou O?"
        @token = gets.chomp.to_s
      end 
  end
end


########## Je ne pense pas que les commentaires soit utiles dans ce cas de figure 
########## Si tu trouves qu'ils sont de trop n'hésites pas à me le dire
########## Je fais un projet avec @paulb pour constituer un repo avec les corrections de chaque exo
########## L'avis sur les commentaires est important pour nous
########## Merci d'avance
