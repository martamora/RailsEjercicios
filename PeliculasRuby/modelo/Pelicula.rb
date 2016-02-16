class Pelicula
  attr_accessor :id, :titulo, :director, :actores


   def to_s
    "#{@titulo} #{@director} #{@actores} #{@id}"
    end
end



