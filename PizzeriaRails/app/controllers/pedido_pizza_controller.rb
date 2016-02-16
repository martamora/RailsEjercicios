class PedidoPizzaController < ApplicationController
  def gestionPedido
    @direccion = params[:direccion]
    @telefono = params[:telefono]
    @tamaño = params[:tamaño]
    @ingredientes = params[:ingredientes]
    @precio = @ingredientes.size * 1.5
  
    case @tamaño
    when 'Pequeño'
      @precio += 10
      when 'Mediano'
        @precio += 15
      when 'Grande'
        @precio += 20
    end
end
end