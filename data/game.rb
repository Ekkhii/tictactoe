class Game

  def initialize
    @joueur1 = Player.new
    @joueur1.infos
    @joueur2 = Player.new
    @joueur2.infos
    @plateau = Board.new
    @i = 0
  
  end

#methode qui lance un tour
  def go
    @i += 1
    puts "===================="
    puts "Tour n°#{@i}"
    puts "===================="

#creation d'une boucle pour alterner les joueurs
    loop do @i < 9
  
       if @i.odd?
        turn(@joueur1)

       else @i.even?
        turn(@joueur2)
      end
        break if @i == 9
    end
  end

#methode qui lance les actions
  def turn(player)
  puts " C'est le tour de #{player.nom}"

#affichage du plateau
  @plateau.visuel

#demande au joueur ce qu'il joue
  puts "Ou veux tu placer ton pion?"
  puts "Info : Tapes de 1 à 9"
  @choix = gets.chomp.to_i
  puts "Tu as choisi la case #{@choix}"

#appel de la methode de modification de la valeur de la case
  @plateau.play(@choix, player, player.token)

#affichage du tableau avec les modifications
  @plateau.visuel

#verification de la victoire ou non 
  @plateau.victory(player.win, player.token)
  puts player.win
    if player.win == false
      go
    elsif
      puts "Le jeu est fini ! #{player.nom} à gagner"
    end

  end
end