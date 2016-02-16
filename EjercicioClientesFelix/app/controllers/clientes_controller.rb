class ClientesController < ApplicationController
  def alta
    cliente = Cliente.new
    cliente.nombre = params[:nombre]
    cliente.apellidos = params[:apellidos]
    cliente.edad = params[:edad]
    cliente.telefono = params[:telefono]
    dao = DaoCliente.new
    dao.alta cliente
    @clientes=dao.getClientes
    render :index
  end

  def detalle
    id = params[:id].to_i
    puts "id #{id}"
    @cliente = DaoCliente.new.getClientesById id
  end

  def index
    @clientes = DaoCliente.new.getClientes
    puts @clientes
  end
  def borrar
    id = params[:id].to_i
    @clienteBorrado = DaoCliente.new.borrar id
  end
  def update
    id = params[:id].to_i
    @cliente= DaoCliente.new.getClientesById(id) 
    
  end
  def grabar 
    cliente = Cliente.new
    cliente.nombre = params[:nombre]
    cliente.apellidos = params[:apellidos]
    cliente.edad = params[:edad]
    cliente.telefono = params[:telefono]
    cliente.id = params[:id].to_i
    dao = DaoCliente.new
    dao.update cliente
    index
    render :index
  end
end
