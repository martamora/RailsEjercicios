class ZooLN
 def initialize (dao, log)
   @AnimalesDAO = dao
   @AnimalesLog = log
 end
 
 def guardarAnimal (animal)
   @AnimalesDAO.insert animal
   @AnimalesLog.generarLog "Animal #{animal} insertado correctamente."
 end
 def listarAnimales 
   @AnimalesDAO.list
 end
 def borrarAnimal (id)
   @AnimalesDAO.delete id
 end
 def actualizarAnimal (animal)
   @AnimalesDAO.update animal
    puts "El zoo ha sido actualizado"
 end
end