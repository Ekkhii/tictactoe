class Board

  attr_accessor :array_boardcase

  def initialize
    
#initialisation de toute les cases avec une valeur " " et un numero  
   @array_boardcase = [@case1 = BoardCase.new(" ", 1), 
                        @case2 = BoardCase.new(" ", 2),
                        @case3 = BoardCase.new(" ", 3),
                        @case4 = BoardCase.new(" ", 4),
                        @case5 = BoardCase.new(" ", 5),
                        @case6 = BoardCase.new(" ", 6),
                        @case7 = BoardCase.new(" ", 7),
                        @case8 = BoardCase.new(" ", 8),
                        @case9 = BoardCase.new(" ", 9)]
                       
                
  end

#methode d'affichage du tableau
 def visuel

  puts "Visualisation du plateau de jeu"
  puts "   1   2   3"
  puts "A  #{@case1.valeur} | #{@case2.valeur} | #{@case3.valeur} " 
  puts "  ---|---|---"
  puts "B  #{@case4.valeur} | #{@case5.valeur} | #{@case6.valeur} "
  puts "  ---|---|---"
  puts "C  #{@case7.valeur} | #{@case8.valeur} | #{@case9.valeur} "
  puts

  end

#methode qui modifie la valeur de la case
  def play(choix, player, token)
    if @array_boardcase[(choix-1)].valeur == " "
      @array_boardcase[(choix-1)].valeur = token
    else
      puts "Deja pris!"
      choix = gets.chomp.to_i
      self.play(choix, player, token)
    end
  end

#methode qui verifie les combinaisons gagnantes
  def victory(win, token)
    case 
    when @case1.valeur == token && @case2.valeur == token && @case3.valeur == token
      win = true
    when @case4.valeur == token && @case5.valeur == token && @cas6.valeur == token
      win = true
    when @case7.valeur == token && @case8.valeur == token && @case9.valeur == token
      win = true
    when @case1.valeur == token && @case4.valeur == token && @case7.valeur == token
      win = true
    when @case2.valeur == token && @case5.valeur == token && @case8.valeur == token
      win = true
    when @case3.valeur == token && @case26valeur == token && @case9.valeur == token
      win = true
    when @case1.valeur == token && @case5.valeur == token && @case9.valeur == token
      win = true
    when @case3.valeur == token && @case5.valeur == token && @case7.valeur == token
      win = true
    else
      win = false 
    end
  end
end