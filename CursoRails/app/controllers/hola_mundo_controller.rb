class HolaMundoController < ApplicationController
  
    #Las variables de clase no se van a perder cada vez que iniciemos el objeto, todo lo contrario que pasa con las variables de instancia
    #Cada vez que llega una petición web a este controlador, se creará un objeto nuevo, por lo que HAY QUE TENER CUIDADO con las variables
    #de instancia, ya que perderemos su valor de una petición a otra, en cada llamada a esta clase.
    
    
    #Principalmente, las variables de instancia nos van a servir para comunicarnos con la vista.
    @@contadorClase = 0
    
    def initialize
      @contadorInstancia = 0
    end
 
  def saludame
    puts "Saludame -> Entrando en el método"
    I18n.locale = :es
    @saludo = I18n.t 'hello'
    @@contadorClase += 1
    @contadorInstancia += 1
    puts "El contador de clase vale #{@@contadorClase}"
    puts "El contador de instancia vale #{@contadorInstancia}"
  end 
  
  def saludameIngles
    puts "Hello -> Into the method"
    #Incluimos la internacionalización con el método I18n.t que viene desde config/locales/en.yml
    I18n.locale = :en
    @saludo = I18n.t 'hello'
    #Nos cargamos el archivo saludameIngles.html.erb porque el método render te redirige a la vista, en este caso el archivo html
    render 'saludame'
  end   
end
