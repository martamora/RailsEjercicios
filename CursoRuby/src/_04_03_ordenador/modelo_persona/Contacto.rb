class Contacto
  #no es necesario poner los paréntesis en ruby, aunque aporta legibilidad de código
  def initialize(dni, nombre, telefono, mail, direccion)
    @dni = dni
    @nombre = nombre
    @telefono = telefono
    @mail = mail
    #quiero guardar un objeto de la clase dirección
    @direccion = direccion
    
  end
  def to_s
    "#{@dni}, #{@nombre},#{@telefono}, #{@mail}, #{@direccion}"
  end
    
end
