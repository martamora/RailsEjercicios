class Pelicula
  attr_accessor :id, :titulo, :director, :actores
  
  #titulo -> String
  #director -> objeto de la clase Director
  #actores -> array de la clase Actor
  
  def initialize titulo, director, actores
    @titulo = titulo
    @id = nil
    @director = director
    @actores = actores
  end
  def to_s
    actores_to_s = "["
    for actor in actores
      actores_to_s +="]"
    end
    "#{id}, Título: #{titulo},\n Director: #{director},\n Actores: #{actores}"
  end
  
end