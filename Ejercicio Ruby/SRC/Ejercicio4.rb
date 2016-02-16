

def sumar (numero1, numero2)
  numero1.to_i + numero2.to_i
  
end
def restar (numero1, numero2)
  numero1.to_i-numero2.to_i
end

puts "Vamos a aprender a calcular"
puts "- - - - - - - - - - - - - - - - - - - - - - "
puts "Introduzca numero1: "
numero1 = gets.strip
puts "Introduzca numero2: "
numero2 = gets.strip
sumar = sumar numero1, numero2
restar = restar numero1, numero2
puts "El resultado de la suma es #{sumar}"
puts "El resultado de la resta es #{restar}"
