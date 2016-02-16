class GestionPersonasLN
  def initialize(dao, log)
  @personasDAO = dao
  @personasLog = log
  end
 
  def guardarPersona(persona)
    @personasDAO.insert persona
    @personasLog.generarLog "Persona #{persona} insertada"
    
  end
  def buscarPersona(idPersona)
   listaDePersonas = @personasDAO.list
   #TODO: Recorro el array buscando el idPersona
   for persona in listaDePersonas
     if persona.id == idPersona
       return persona
     end
   @personasLog.generarLog "Persona con id: #{idPersona} no encontrada"
   end
   return nil
 end
  def borrarPersonas(arrayIdPersonas)
    #TODO: Recorro el array de personas
        #TODO: En cada iteración @@personasDao.delete id    
  end
  def actualizarPersona(persona)
    @personasDAO.update persona    
  end
end