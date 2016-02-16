load 'Modelo/libros.rb'
load 'DAO/logDAO.rb'
load 'DAO/librosDAO.rb'
load 'Negocio/gestionLibreriaLN.rb'

sleep 0.5

gestionLibros=Biblioteca::Negocio::GestionLibreriaLN.new(Biblioteca::DAO::LibrosDAO.new, Biblioteca::DAO::LogDAO.new)

puts "----------------------------------------------------------------------------------"

puts "Esta es nuestra Biblioteca"

puts "----------------------------------------------------------------------------------"

libro1=Biblioteca::Modelo::Libro.new("Harry Potter", "J.K. Rowling", "Magia")
libro2=Biblioteca::Modelo::Libro.new("El año que trafiqué con mujeres", "Antonio Salas", "Prostitución")
libro3=Biblioteca::Modelo::Libro.new("La Casa de los Espíritus", "Isabel Allende", "Drama")
libro4=Biblioteca::Modelo::Libro.new("Divergente", " Verónica Roth", "Ciencia Ficción")

gestionLibros.guardarLibro(libro1)
gestionLibros.guardarLibro(libro2)
gestionLibros.guardarLibro(libro3)
gestionLibros.guardarLibro(libro4)

puts "----------------------------------------------------------------------------------"

puts "Los libros se han guardado en la Biblioteca correctamente"

puts "----------------------------------------------------------------------------------"

puts "Nuestra lista de libros es la siguiente"

puts "----------------------------------------------------------------------------------"

puts gestionLibros.listarLibros

puts gestionLibros.borrarLibro(1)

puts "----------------------------------------------------------------------------------"

puts "Borramos el primer registro"

puts "----------------------------------------------------------------------------------"

puts "Libro 1 borrado" 

puts "----------------------------------------------------------------------------------"

puts "Nuestra nueva lista es:"

puts "----------------------------------------------------------------------------------"

puts gestionLibros.listarLibros

puts "----------------------------------------------------------------------------------"

puts "Vamos a modificar una entrada"

puts "----------------------------------------------------------------------------------"

nuevoLibro = Biblioteca::Modelo::Libro.new("Los Pilares de la Tierra", "Ken Follet", "Ficción Histórica")

nuevoLibro.id = 4

puts gestionLibros.actualizarLibro(nuevoLibro)

puts "----------------------------------------------------------------------------------"

puts "Esta es nuestra nueva lista"

puts "----------------------------------------------------------------------------------"

puts gestionLibros.listarLibros

puts "----------------------------------------------------------------------------------"
