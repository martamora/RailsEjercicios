class ClientesController < ApplicationController
  
  def alta 
    cliente = crearObjetoCliente params[:nombre], params[:apellidos], params[:edad], params[:telefono]
    negocio = NegocioCliente.new(DaoCliente.new)
    negocio.alta cliente
    
  end
  
  def crearObjetoCliente nombre, apellidos, edad, telefono
    cliente = Cliente.new
    cliente.nombre = nombre
    cliente.apellidos = apellidos
    cliente.edad = edad
    cliente.telefono = telefono
    return cliente
    
  end
 
end
