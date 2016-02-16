load 'modelo/Persona.rb'
load 'dao/LogDAO.rb'
load 'dao/PersonasDAO.rb'
load 'negocio/GestionPersonasLN.rb'

puts "Inicializando....."
negocio = GestionPersonasLN.new(PersonasDAO.new, LogDAO.new)
negocio.guardarPersona(Persona.new "Marta", "Mora")
negocio.guardarPersona(Persona.new "Blanca", "Mora")
miArrayDeIds = [1]
negocio.borrarPersonas miArrayDeIds
persona = negocio.buscarPersona 1
puts persona.nombre
