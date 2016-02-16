class GestionVideoclubLN
   attr_accessor :tamañoMaximo, :peliculasDAO
   def initialize
     @tamañoMaximo = 10
   end
   def insertarPelicula pelicula
     if @peliculasDAO.listar.size < @tamañoMaximo
       @peliculasDAO.insertar pelicula
       return true
     else
       return false
     end
   end
  def delete idPelicula
    @peliculasDAO.borrar idPelicula
  end
  def listar
    @peliculasDAO.listar
  end
  def modificar pelicula
   @peliculasDAO.modificar pelicula 
  end
end
