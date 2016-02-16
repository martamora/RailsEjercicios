load 'Calculadora.rb'

puts "Vamos a aprender a calcular"
puts "- - - - - - - - - - - - - - - - - - - - - - "
puts "Introduzca numero1: "
numero1 = gets.strip
puts "Introduzca numero2: "
numero2 = gets.strip
suma = suma numero1, numero2
resta = resta numero1, numero2
puts "El resultado de la suma es #{suma}"
puts "El resultado de la resta es #{resta}"
