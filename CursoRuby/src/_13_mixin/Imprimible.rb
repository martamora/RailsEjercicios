=begin Un módulo puede servir también como biblioteca de funciones
Ya que Ruby no permite la herencia múltiple, 
mediante el mixin podemos incluir todos los módulos que queramos a una clase
sería como emular la herencia múltiple  
=end
  
module Imprimible
  def imprimir_pantalla texto

    puts "Imprimimos por pantalla: #{texto}"
  end
  
  def imprimir_fichero fichero,texto
    File.open(fichero,'w'){
      |f|#representa al fichero
      f.puts "--#{texto}"
    }
    
  end
end
