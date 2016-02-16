class Direccion
  def initialize(calle, numero, cp, ciudad, pais)
    @calle = calle
    @numero = numero
    @cp =  cp
    @ciudad = ciudad
    @pais = pais
    
  end
  def to_s
    "#{@calle}, #{@numero},#{@cp}, #{@ciudad}, #{@pais},"
  end
end