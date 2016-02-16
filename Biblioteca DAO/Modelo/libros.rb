module Biblioteca
  module Modelo
    
 
class Libro
  attr_accessor :id, :titulo, :autor, :descripcion 
  def initialize titulo, autor, descripcion
    @titulo = titulo
    @autor = autor
    @descripcion = descripcion
  end
  def to_s
    "#{@titulo} #{@autor} #{@descripcion} #{@id}"
  end
end
 end
end