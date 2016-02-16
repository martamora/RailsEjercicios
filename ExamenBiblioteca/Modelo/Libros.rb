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
        "#{@id}. #{@titulo}, #{@autor}, #{@descripcion}"
      end
    end
  end
end