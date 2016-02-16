class PaginaFechaController < ApplicationController
  
  def mostrarFecha
    @fechaActual = Time.now
  end
end
