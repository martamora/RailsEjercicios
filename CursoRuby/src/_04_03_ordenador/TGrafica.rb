load 'Precio.rb'

class Ordenador::TGrafica<Precio
   attr_accessor :capacidad, :modelo, :precio
  def initialize (capacidad, modelo, precio)
    @capacidad = capacidad
    @modelo = modelo
    super precio
  end
  
  def to_s
  "#{@capacidad}, #{@modelo}, #{@precio}"
  end
end