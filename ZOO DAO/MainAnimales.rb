load 'modelo/Animales.rb'
load 'DAO/AnimalesDAO.rb'
load 'DAO/LogDAO.rb'
load 'negocio/ZooLN.rb'

adminZoo=ZooLN.new(AnimalesDAO.new, LogDAO.new)

puts "---------------------------------------------------------------------"
puts "Os presentamos nuestro ZOO"
puts "---------------------------------------------------------------------"

animal1=Animal.new("León", "Canario", "Carpa")
animal2=Animal.new("Tigre", "Pavo Real", "Anguila")
animal3=Animal.new("Elefante", "Gallina", "Trucha")
animal4=Animal.new("Mamut", "Cigüeña", "Salmón")

adminZoo.guardarAnimal(animal1)
adminZoo.guardarAnimal(animal2)
adminZoo.guardarAnimal(animal3)
adminZoo.guardarAnimal(animal4)

puts "---------------------------------------------------------------------"
puts "Los animales han quedado registrados en el ZOO correctamente."
puts "---------------------------------------------------------------------"
puts "Nuestra lista de animales es la siguiente:"
puts "---------------------------------------------------------------------"
puts adminZoo.listarAnimales
puts "---------------------------------------------------------------------"
puts "Vamos a borrar un registro de animales."
puts "---------------------------------------------------------------------"
puts adminZoo.borrarAnimal(1)
puts "El primer registro de animales ha sido borrado"
puts "---------------------------------------------------------------------"
puts "Nuestra lista de animales ha quedado así:"
puts "---------------------------------------------------------------------"
puts adminZoo.listarAnimales
puts "---------------------------------------------------------------------"
nuevoAnimal=Animal.new("Ballena", "Ave Rapaz", "Pez Espada")
nuevoAnimal.id = 2
puts adminZoo.actualizarAnimal(nuevoAnimal)
puts "---------------------------------------------------------------------"
puts "Nuestra nueva lista de animales es:"
puts "---------------------------------------------------------------------"
puts adminZoo.listarAnimales
puts "---------------------------------------------------------------------"



