load 'Persona.rb'



#Para describir la clase se iguala al nombre de la clase (en mayúsucla la primera) y .new

persona = Persona.new("47034959M", "Marta", "Mujer", 32)
persona2 = Persona.new("50014168R", "Rosa", "Mujer", 71)

#Esta linea da error ya que no existe el constructor (initialize)
#por defecto o sin parámetros
#persona3 = Persona.new
puts "El número de personas creado es: #{Persona.getNumeroDePersonas}"

persona.setColorOjos "Azules"
puts persona.getColorOjos
#Estos metodos existen después de crear el attr_accesor
puts persona.nombre
persona.nombre = "Marta"
puts persona.nombre
persona.colorOjos= "Verdes"
persona.saludar
persona2.saludar

#persona edad 23
#persona2 edad 45
persona2=persona
persona2.edad=44

puts persona
puts