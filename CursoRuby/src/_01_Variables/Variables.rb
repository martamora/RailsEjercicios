#Esto es un comentario en Ruby
=begin
  Esto sería un comentario de varias
  líneas. Podemos poner todas las que queramos.

=end

#variables
#no empiezan con ninguna palabra reservada. Son totalmente arbitrarias
#Deben empezar por '_' o por una letra. No pueden empezar por un número ni por un símbolo.
variable1 = 1
puts variable1
variable1=2
puts variable1

sVariable="Variable de texto"
iVariable=3
puts sVariable
puts iVariable
puts "El valor de la variable Svariable es: " +sVariable
#Debemos convertir el tipo Fixnum a String
puts "El valor de la variable Ivariable es: " +iVariable.to_s

puts "El valor de la variable Svariable es:  #{sVariable}"
#podemos declarar strings con comillas simples

puts 'El valor de la variable Svariable es: #{sVariable}'

#cuando queremos inicalizar una variable y no le queremos dar valor: 
variable = nil

puts "El valor de la variable Svariable es: #{variable}"
#Por convenciones el nombre de las variables se suelen poner en camel case o en snake case
#camelcase
estoEsUnaVariable = "variable"

#snake case
esto_es_una_variable = "variable" 

#Constantes
#Se declaran poniendo la primera letra en mayuscula
#Ruby es un lenguaje case sensitive
EstoEsUnaConstante = "Marta"
#Normalmente, por convención, las constantes van todas en mayusculas y en snake case
CONSTANTE = "Isabel"
CONSTANTE_DE_LA_MUERTE = "Marta"
puts CONSTANTE_DE_LA_MUERTE
puts "La constante es: #{CONSTANTE_DE_LA_MUERTE}"
#Las constantes es ruby se pueden cambiar la referencia aunque nos daría un warning
#CONSTANTE ="Roberto"
#puts CONSTANTE

#Tenemos tambien algunas pesudo variables
#Son variables predefinidas
#Nos dice la ruta del fichero
puts __FILE__
#Nos dice las lineas
puts __LINE__
#Acumulaciones
valor1= 3
valor1=valor1+5
puts valor1
#Es una manera de acortar valor1 = valor1 +5
valor1 +=5
puts valor1
valor1 -=3
puts valor1
valor1*=2
puts valor1
valor1 /=2
puts valor1

#Cosas equivalentes con los String
valor1= "Pepe"
valor1 += " te saludo"
puts valor1

valor1 = nil
#En caso de que no este asignado un valor a la variable se establece el valor 8
#En caso contrario, es decir, que ya esté asignado , no se cambiará el valor
valor1 ||=8
puts valor1
valor1 ||=12
puts valor1

#En ruby podemos hacer asignaciones múltiples

valor2=valor3=valor4=98
puts valor2
puts valor3
puts valor4

#Todas estas variables que hemos visto hasta ahora son variables de tipo local
#Ruby también soporta variables globales
#Es decir, que son visibles desde cualquier parte de nuestro programa
#Se declaran con el símbolo '$' delante

$variableGlobal=50
puts "El valor de la variable global es : #{$variableGlobal}"


#Tipos básicos en ruby

tipoFixnum = 3
#también tenemos bignum. Es mucho más grande que un fixnum (más rango), 
#no tenemos por qué preocuparnos por las converiones ya que ruby lo hace automáticamente
tipoString= "Literal"
tipoFloat =3.0 #poniendo un '.'
tipoTrue=true
puts tipoFixnum.class #nos va a decir la clase a la que pertenecen
puts tipoString.class
puts tipoTrue.class
tipoFalse = false
puts tipoFalse.class
tipoNil=nil
puts tipoNil.class

#Conversiones

puts "El número " +3.to_s
puts "3".to_i + 5
puts "3pepe".to_i + 10
#Si no puede convertir el String a integer, devuelve un 0
puts "pepe3".to_i + 10
puts 3.to_f #floar=decimal

puts 2 + 3 * 5
puts "#{(2 + 3) * 5}"
puts 2/1




