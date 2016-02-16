=begin Un bloque es una porción de cóvdigo encerrada entre llaves {}
o entre do..end
El bloque solo puede aparecer después de usar un método
Dicho método debería estar preparado para usar dicho bloque

=end

3.times {
  puts "Hola Mundo"
}

3.times do
  puts "Hola Mundo do... end"
end

=begin En los bloques también podemos poner una variable
En el caso del método times representará cada una de las iteraciones  
=end
array=["Pepe", "Pepin", "Pepon"]
array.size.times{
  |var|
  puts "Hola Time, vamos por la iteración #{var} y el valor es #{array[var]}"
}

3.times {
  |var|
  puts "Hola time, vamos por la iteración #{var}"
}
#ejecutamos (3-1) +1

0.upto 3 do
  |var|
  puts "hola upto #{var}"
  puts "hola array #{array[var]}"
  
end

#mas metodos

puts "--------"
array = [1,2,3,4]
array.each{
  |var| #contendrá cada uno de los elementos del array
  puts "valor del array #{var}"
}

array.each_with_index {
  |valor, indice|
  puts "El valor del indice #{indice} es #{valor}"
}

#select, va a devolver un valor que coincida con la condición
resultado = array.select{
  |var|
  var == "pepe"
}

load "../_04_00Clases/Persona.rb"
arrayPersonas = [Persona.new("33", "Marta", "Femenino", "35")]
#select, va a devolver un valor que coincida con la condición
resultado = arrayPersonas.select{
  |persona|#cada var es una persona, renombramos a persona
  persona.nombre == "pepe"
}
puts resultado

puts "---borrar elemento con condicion---"
arrayPersonas.delete_if{
  |persona|
  persona.nombre = "pepe"
}

puts arrayPersonas

=begin Todos los metodos pueden recibir un bloque como argumento implicíto
pudiendo invocar dicho bloque en cualquier momento de nuestro código
usando la palabra reservada 'yield'  
=end
puts "-------------"
def metodo
  puts "Esto es un método de ejemplo"
  yield
end
 metodo {
   puts "Esto es un bloque de ejemplo"
 }

def metodo
  puts "Esto es otro método de ejemplo"
  variable = "valor1"
  yield variable
end

metodo{
  |var|
  puts "Esto es otro bloque de ejemplo con el parametro #{var}"
}

def metodo parametro
  puts "Esto es otro método MAS de ejemplo"
  yield parametro
end
metodo("Marta"){
  |var|

puts "Esto es otro nloque de ejemplo con el parametro #{var}"
}

metodo("Pepe"){
  |var|
  puts "Esto es otro bloque de ejemplo con el parámetro #{var}"
}