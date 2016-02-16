
class PersonasDAO
 # Almacen persistente
 @@almacenPersonas = []
 @@id = 1
 
 def insert (persona)
   #TODO: Guardar Persona en almacenPersonas
   persona.id = @@id
   @@id+=1
   @@almacenPersonas << persona  
   @@almacenPersonas
 end
 def update (persona)
   #TODO: Obtengo el id de persona a actualizar
   idABuscar = persona.id
   #TODO: Buesco el id en el arrayPersonas
   i = 0
   for personaActual in @@almacenPersonas
     if personaActual.id == idABuscar then
       @@almacenPersonas[i]=persona
       return true
     end
   end
   i += 1
   puts "Actualizo persona"
  end
   #TODO: Sustituyo la persona vieja por la nueva
   
   
 def delete (idPersona)
   #TODO: Borro Persona del array
   for personaActual in @@almacenPersonas
     if personaActual.id == idABuscar then
       @@almacenPersonas.delete personaActual
       return
     end
    end
     i += 1
   puts "Borro persona"
 end
 def list
   #TODO: Devuelvo el array
   @@almacenPersonas
 end
end