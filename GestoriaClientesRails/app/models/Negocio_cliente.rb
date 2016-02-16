class NegocioCliente
  def initialize dao
    @dao = dao
  end
  def alta cliente
    @dao.alta cliente
    true
  end
end