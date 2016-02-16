class Persona
  attr_accessor :nombre
  def initialize nombre
      @nombre = nombre
  end
  def to_s
    "El nombre es: #{@nombre}"
  end
end