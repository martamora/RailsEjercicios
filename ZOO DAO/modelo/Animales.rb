class Animal
  attr_accessor :id, :mamiferos, :aves, :peces
  
 def initialize mamiferos, aves, peces
   @mamiferos = mamiferos
   @aves = aves
   @peces = peces
  end
  def to_s
    "#{@id}. #{@mamiferos}, #{@aves}, #{@peces}"
  end
end