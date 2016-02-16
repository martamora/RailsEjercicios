module Biblioteca
  module Negocio
    class GestionLibreriaLN
      def initialize dao, log
        @LibrosDAO = dao
        @LibrosLOG = log
      end
      def guardarLibro libro
        @LibrosDAO.insert libro
        @LibrosLOG.generarLog "Libro #{libro} Insertado correctamente."
      end
      def borrarLibro id
        @LibrosDAO.delete id
      end
      def actualizarLibro libro
        @LibrosDAO.update libro
      end
      def listarLibro
        @LibrosDAO.list
      end
    end
  end
end