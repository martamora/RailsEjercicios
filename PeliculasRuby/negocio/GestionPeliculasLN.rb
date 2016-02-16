 class GestionPeliculasLN
   def initialize(dao, log)
     @PeliculasDAO=dao
     @PeliculasLog =log
   end
   
   def guardarPelicula(pelicula) 
     @PeliculasDAO.insert pelicula
     @PeliculasLog.generarLog "Pelicula #{pelicula} insertada"
   end
   
   def listarPeliculas
     @PeliculasDAO.list
      
 end

  def borrarPelicula(id)
     @PeliculasDAO.delete id
     puts "Pelicula borrada"
    
  end
  def actualizarPelicula (pelicula)
    @PeliculasDAO.update pelicula
    puts "Almacén de películas actualizado"
  end
end