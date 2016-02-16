load 'modelo/Pelicula.rb'
load 'dao/LogDAO.rb'
load 'dao/PeliculasDAO.rb'
load 'negocio/GestionPeliculasLN.rb'

opcion = 0

gestionPeliculas=GestionPeliculasLN.new(PeliculasDAO.new, LogDAO.new)

while opcion != 5 do
  puts "\tVIDEOCLUB"
  puts "Elija una opción"
puts "1. Insertar\n 2. Borrar\n 3. Listar\n 4. Actualizar\n 5. Salir"


opcion = gets.strip.to_i

    case opcion
    when  1 then 
      pelicula1=Pelicula.new
      puts "Insertar Pelicula"
      puts "Introduzca el título"
      pelicula1.titulo = gets.strip
      puts "Introduzca el Director"
      pelicula1.director = gets.strip
      puts "Introduzca actores"
      pelicula1.actores = gets.strip
      gestionPeliculas.guardarPelicula(pelicula1)
      
    when 2 then 
      puts "Borrar Peliculas"
      puts "Introduzca id"
      id = gets.strip.to_i
      gestionPeliculas.borrarPelicula(id)
   
      
      
    when 3 then 
      puts "Listar Peliculas"
      puts gestionPeliculas.listarPeliculas
      
      
      
    when 4 then 
      puts "Actualizar Peliculas, introduzca Id"
      id = gets.strip.to_i
      
      pelicula1=Pelicula.new
      pelicula1.id=id
      puts "Introduzca el título"
      pelicula1.titulo = gets.strip
      puts "Introduzca el Director"
      pelicula1.director = gets.strip
      puts "Introduzca actores"
      pelicula1.actores = gets.strip
      gestionPeliculas.actualizarPelicula(pelicula1)
      
      
      
    when 5 then 
      puts "Salimos!!!"
    end
    
end

