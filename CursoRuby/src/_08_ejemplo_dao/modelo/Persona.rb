class Persona
  attr_accessor :nombre, :apellidos, :id
  def initialize (nombre, apellidos)
    @nombre = nombre
    @apellidos = apellidos
    @id
  end
  def to_s
    "#{@nombre} #{@apellidos}"
   
  end
  
end
