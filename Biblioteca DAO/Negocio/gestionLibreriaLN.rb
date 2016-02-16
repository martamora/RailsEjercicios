
module Biblioteca
  module Negocio
    class GestionLibreriaLN
  def initialize (dao, log)
  @LibrosDAO = dao
  @LibrosLog = log
  end
 
  def guardarLibro(libro)
    @LibrosDAO.insert libro
    @LibrosLog.generarLog "Libro #{libro} insertado"
    
  end
  def listarLibros
    @LibrosDAO.list
  end
  def borrarLibro(id)
    @LibrosDAO.delete id
     
  end
  def actualizarLibro(libro)
    @LibrosDAO.update libro 
    puts "Almacén de libros actualizado"   
  end
end
end
end