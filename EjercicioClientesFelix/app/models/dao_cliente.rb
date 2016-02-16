class DaoCliente
  @@clientesHash = {}
  @@id = 0
  
  def alta cliente
    cliente.id = @@id
    @@clientesHash[@@id] = cliente
    @@id +=1
  end
  
  def getClientes
    @@clientesHash.values
  end
  def getClientesById id
    @@clientesHash[id]
  end
def borrar id
  @@clientesHash.delete(id)
end  

def update cliente
  @@clientesHash[cliente.id] = cliente
end

end