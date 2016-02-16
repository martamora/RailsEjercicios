=begin  
  Las excepciones son errores que ocurren en tiempo de ejecución
  y que pueden romper la ejecución del programa 
=end

def lanzarExcepcion
  puts "Antes de lanzar la Excepción"
  #lanzamos un error
  raise "Ha ocurrido un error inesperado"
  puts "Después de lanzar una excepción"
end

lanzarExcepcion
puts "Después de llamar al método lanzar excepcion"