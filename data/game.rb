class Game
  def initialize
    #TO DO : créé 2 joueurs, créé un board
    @joueur1 = Player.new
    @joueur1.infos
    @joueur2 = Player.new
    @joueur2.infos
    @plateau = Board.new
    @i = 0
  
  end

  def go
    # TO DO : lance la partie
    @i += 1
    puts "Tour n°#{@i}"
    
    loop do @i < 9
  
       if @i.odd?
        turn(@joueur1)

       else @i.even?
        turn(@joueur2)
      end
        break if @i == 9
    end
  

  end

  def turn(player)
    #TO DO : affiche le plateau, demande au joueur il joue quoi, 
    #vérifie si un joueur a gagné, passe au joueur suivant si la partie n'est pas finie
  puts " C'est le tour de #{player.nom}"
  #afficher le plateau
  @plateau.visuel
  #demande au joueur ce qu'il joue
  puts "Ou veux tu placer ton pion?"
  puts "Info : Tapes de 1 à 9"
  @choix = gets.chomp.to_i
  puts "Tu as choisi la case #{@choix}"
  @plateau.play(@choix, player, player.token)
  @plateau.visuel
  @plateau.victory(player.win, player.token)
  puts player.win
    if player.win == false
      go
    elsif
      puts "Le jeu est fini ! #{player.nom} à gagner"
    end

  end
end