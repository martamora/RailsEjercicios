#El nombre de las clases siempre empieza por Capital Letter

class Persona

  #Con esto estamos creando sus repectivos getter setter

  attr_accessor :nombre, :sexo, :edad 
  
  #con esto damos permisos de solo lectura no de escritura
  attr_reader :dni
  
  #También tenemos de slo escritura
  #attr_writer
  
  #Genero una variable de clase! Qué emoción!
  @@numero_de_persona = 0
  
  #Defino el método de clase para acceder al número de personas
  #self es un atajo para crear los métodos de clase
  def self.getNumeroDePersonas
    @@numero_de_persona
  end
  
  #Este es el constructor de clase
  def initialize (dni, nombre, sexo, edad)
    #Es conveniente inicializar los atributos, pero no es obligatorio, aunque salga un warning
    @dni = dni
    @nombre = nombre
    @sexo = sexo
    @edad = edad
    @colorOjos = nil
    @@numero_de_persona = @@numero_de_persona + 1
    
  end
  
  def setColorOjos colorOjos
    @colorOjos = colorOjos
  end
  
  def getColorOjos 
    @colorOjos
  end
  
  def colorOjos= colorOjos
    @colorOjos = colorOjos
  end
  def saludar
    puts "Hola a todos, soy una persona y me llamo #@nombre"
  end 
end