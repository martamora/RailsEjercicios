class Ordenador::Direccion
  attr_accessor :mac_address
  def initialize(mac_address)
    @mac_address=mac_address
  end
  def to_s
    "#{@mac_address}"
  end
end