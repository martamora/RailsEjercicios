class DaoCliente
  @@clientes = {}
  
  def alta cliente
    @@clientes[cliente.nombre] = cliente
  end
  def getCliente
    @@clientes
  end
end