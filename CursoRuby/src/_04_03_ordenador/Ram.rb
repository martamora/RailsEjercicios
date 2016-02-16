load 'Precio.rb'

class Ordenador::Ram<Precio
   attr_accessor :capacidad, :tipo, :precio
  def initialize (capacidad, tipo, precio)
    @capacidad = capacidad
    @tipo = tipo
    super precio
  end
  
def to_s
  "#{@capacidad}, #{@tipo}, #{@precio}"
end
end