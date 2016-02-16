load 'Precio.rb'

class Ordenador::Almacenamiento<Precio
   attr_accessor :tipo, :velocidad, :capacidad, :precio
  def initialize (tipo, velocidad, capacidad, precio)
    @tipo = tipo
    @velocidad = velocidad
    @capacidad = capacidad
    super precio
  end
  
  def to_s
  "#{@tipo}, #{@velocidad}, #{@capacidad}, #{@precio}"
  end
end