class Director < Persona
  attr_accessor :edad
  def initialize nombre, edad
    super nombre
    @edad = edad
  end 
  def to_s
    "#{super},  y la edad #{@edad}"
  end
 end