load 'Precio.rb'

class Ordenador::Procesador<Precio
   attr_accessor :cache, :nucleo, :velocidad, :tipo, :precio
  def initialize (cache, nucleo, velocidad, tipo, precio)
    @cache = cache
    @nucleo = nucleo
    @velocidad = velocidad
    @tipo = tipo
    super precio
  end
  
def to_s
  "#{@cache}, #{@nucleo}, #{@velocidad}, #{@tipo}, #{@precio}"
end
end