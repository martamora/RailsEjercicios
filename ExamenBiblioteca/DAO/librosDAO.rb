module Biblioteca
  module DAO
    
    class LibrosDAO
      def initialize
        @almacenLibros = []
        @id = 1
      end
      
      def insert libro
        libro.id = @id
        @id+=1
        @almacenLibros << libro
      end
      
      def delete idLibro
        i=0
        for nuevoLibro in @almacenLibros
          if nuevoLibro.id == idLibro then
            @almacenLibros.delete nuevoLibro
            return
          end
        end
        i+=1
      end
      
      def update nuevoLibro
        idLibroNuevo = nuevoLibro.id
        i=0
        for libro in @almacenLibros
          if libro.id = idLibroNuevo then
            @almacenLibros [i] = nuevoLibro
            return  
          end          
        i+=1
        end
    end  
    
    def list
      @almacenLibros
    end  
    end
  end
end