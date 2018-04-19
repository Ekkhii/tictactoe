class Player
  #TO DO : la classe a 2 attr_accessor, son nom, sa valeur (X ou O). Elle a un attr_writer : il a gagné ?
  attr_accessor :nom, :token, :win

  
  def initialize
    #TO DO : doit régler son nom, sa valeur, son état de victoire
    @nom = ""
    @token= ""
    @win = false

  end

  def infos
 
  	puts "Quel est le nom du joueur?"
  	@nom = gets.chomp
  	puts "Quel signe veux tu ? X ou O?"
  	@token = gets.chomp.to_s
    	until @token == "X" || @token == "O"
        puts "Quel signe veux tu? X ou O?"
        @token = gets.chomp.to_s
      end 
  end
end