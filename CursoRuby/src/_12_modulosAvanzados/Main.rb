load 'agenda/modelo/Persona.rb'
load 'agenda/negocio/GestorPersonas.rb'
load 'videoclub/modelo/Persona.rb'

personaAgenda = Agenda::Modelo::Persona.new
personaVideoclub = Videoclub::Modelo::Persona.new

personaAgenda.edad=34
personaAgenda.nombre="Marta"

personaVideoclub.dni="47034959M"
personaVideoclub.nombre = "Pepe"
