load 'modelo/Persona.rb'
load 'modelo/Actor.rb'
load 'modelo/Director.rb'
load 'modelo/Pelicula.rb'
load 'DAO/PeliculasDAO.rb'
load 'negocio/gestionVideoclubLN.rb'

def comprobarPelicula(insertada)
  if insertada
    puts "La pelicula ha sido insertada"
  else
    puts "La pelicula no se ha podido insertar"
  end
end

gestorPeliculas = GestionVideoclubLN.new 
gestorPeliculas.tamañoMaximo=3
gestorPeliculas.peliculasDAO=PeliculasDAO.new

titulo = "Matrix"
director = Director.new "Hermanos guasosqui",45

actores = []
neo = Actor.new "Keanu Reeves","Masuclino"
triniti = Actor.new "Mari Trini","Femenino"
actores << neo
actores << triniti

matrix = Pelicula.new titulo,director,actores

resultado = gestorPeliculas.insertarPelicula matrix
comprobarPelicula(resultado)
puts gestorPeliculas.listar

#repetimos el proceso n veces

matrix = Pelicula.new titulo,director,actores

resultado = gestorPeliculas.insertarPelicula matrix
comprobarPelicula(resultado)
puts gestorPeliculas.listar



#otra vez

matrix = Pelicula.new titulo,director,actores

resultado = gestorPeliculas.insertarPelicula matrix
comprobarPelicula(resultado)
puts gestorPeliculas.listar

#otra vez

matrix = Pelicula.new titulo,director,actores

resultado = gestorPeliculas.insertarPelicula matrix
comprobarPelicula(resultado)
puts gestorPeliculas.listar

#otra vez

matrix = Pelicula.new titulo,director,actores

resultado = gestorPeliculas.insertarPelicula matrix
comprobarPelicula(resultado)
puts gestorPeliculas.listar

#probamos a borrar una
puts gestorPeliculas.delete 1

#modificamos una pelicula

titulo = "Harry Potter"
director = Director.new "El director de HP", 55
harry = Actor.new "Harry el sucio", "Masculino"
ron = Actor.new "Ron Stwart", "Masculino"
ernion = Actor.new "La niña maga repelente", "Femenino"
actores = [harry, ron, ernion]
pelicula=Pelicula.new titulo, director, actores
pelicula.id = 2
gestorPeliculas.modificar pelicula
puts gestorPeliculas.listar
