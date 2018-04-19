class BoardCase
  #TO DO : la classe a 2 attr_accessor, sa valeur (X, O, ou vide), ainsi que son numéro de case)
  attr_accessor :valeur, :numero
  
  def initialize(valeur,numero)
    #TO DO doit régler sa valeur, ainsi que son numéro de case
    @valeur = valeur
    @numero = numero
   
  end
  
end