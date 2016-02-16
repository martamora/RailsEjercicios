load 'Modelo/Libros.rb'
load 'DAO/logDAO.rb'
load 'DAO/librosDAO.rb'
load 'Negocio/GestionLibreriaLN.rb'



gestionLibros=Biblioteca::Negocio::GestionLibreriaLN.new(Biblioteca::DAO::LibrosDAO.new, Biblioteca::DAO::LogDAO.new)

puts "____________________________________________________________________________________________________________"

puts "Os presentamos nuestra nueva Biblioteca"

puts "____________________________________________________________________________________________________________"

libro1=Biblioteca::Modelo::Libro.new("Diez Negritos", "Agatha Christie", "Es una novela policiaca.")
libro2=Biblioteca::Modelo::Libro.new("El Palestino", "Antonio Salas", "Investigación sobre el Islam.")
libro3=Biblioteca::Modelo::Libro.new("Cumbres Borrascosas", "Emily Brontë", "Es de narrativa gótica.")
libro4=Biblioteca::Modelo::Libro.new("Calor Helado", "Richard Castle", "Novela policiaca.")

gestionLibros.guardarLibro(libro1)
gestionLibros.guardarLibro(libro2)
gestionLibros.guardarLibro(libro3)
gestionLibros.guardarLibro(libro4)

puts "____________________________________________________________________________________________________________"

puts "Los libros se han guardado en la Biblioteca correctamente"

puts "____________________________________________________________________________________________________________"

puts "Nuestra lista de libros es la siguiente:"

puts "____________________________________________________________________________________________________________"

puts gestionLibros.listarLibro

puts "____________________________________________________________________________________________________________"

puts "Vamos a borrar el tercer registro"

puts "____________________________________________________________________________________________________________"

puts gestionLibros.borrarLibro(3)

puts "Libro 3 borrado con éxito"

puts "____________________________________________________________________________________________________________"

puts "Nuestra lista de libros actualizada queda de la siguiente manera:"

puts "____________________________________________________________________________________________________________"

puts gestionLibros.listarLibro

puts "____________________________________________________________________________________________________________"

puts "Vamos a modificar una entrada"

nuevoLibro = Biblioteca::Modelo::Libro.new("Los Pilares de la Tierra", "Ken Follet", "Lectura de ficción histórica.")
nuevoLibro.id = 1

puts gestionLibros.actualizarLibro(nuevoLibro)

puts "____________________________________________________________________________________________________________"

puts "Esta es nuestra nueva lista:"

puts "____________________________________________________________________________________________________________"

puts gestionLibros.listarLibro

puts "____________________________________________________________________________________________________________"
