
#Un hash es una colección de datos que mantiene una estructura
#clave => valor
#Los hashes son conocidos como Arrays asociativos
#Los arrays son indexados

#Creamos un hasah vacío

hash= {}
otroHash= Hash.new

#add elementos
hash["clave"] = "valor"
hash["otroaClave"] = 3

#Recuperar elementos
puts hash ["clave"] #recuperamos el valor que almacenamos
puts "El valor de la clave es #{hash["clave"]}"

#solo se admite una clave para un valor dado
#si repitiéramos una clavese cambiaría el valor
hash["clave"]= "otro valor"
puts hash["clave"]

#podemos inicializar un hash con valores
otroHash = {"clave1" => "valor1", "clave2" => "valor2"}
puts otroHash
puts otroHash["clave1"]
  
#Para poner claves en un hash Ruby recomienda el uso de los símbolos ':símbolo'

hashSimbolos = {:clave1 => "valorSimbolo1"}
puts hashSimbolos[:clave1]
hashSimbolos[:clave2] = "valorSimbolo2"
hashSimbolos[:clave3] = "valorSimbolo3"
puts hashSimbolos[:clave2]

unless hashSimbolos[:clave4]
  puts "El valor no existe"
end

if !hashSimbolos[:clave4]
  puts "El valor sigue sin existir"
end

#Los simbolos son inmutables y unicos en todo el programa.
#Inmutable quiere decir que una vez los atributos hayan sido establecidos, no se pueden cambiar

variable1="valor1"
variable2="valor1"

if variable1==variable2
  puts "Tienen el mismo valor"
end

#'equal?' compara posiciones de memoria
if variable1.equal? variable2
  puts "El mismo objeto"
else
  puts "distinto objeto"  
end

#convertimos un String a simbolo
hash[variable1.to_sym] = "Otra Cosa"
puts hash[:valor1]

if variable1.to_sym.equal? variable2.to_sym
  
  puts"Son iguales"
end

hashEquipos = {}
hashEquipos[:Madrid] = ["C.Ronaldo", "Casillas", "Raul"]
hashEquipos[:Rayo]= ["Trashorras", "Amaya"]
for jugador in hashEquipos[:Madrid]
  puts jugador
end
puts "--------------------------------------"

#podemos mostrar un array con todas las "keys" o claves del hash
puts hashEquipos.keys.inspect

#podemos mostrar un array con todos los "values" del hash
puts hashEquipos.values.inspect



puts "--- Equipos de la liga Talentum---"
for equipo in hashEquipos.keys
  puts "-Equipo: #{equipo}"
  for jugador in hashEquipos[equipo]
    puts "--Jugador: #{jugador}"
  end
end

