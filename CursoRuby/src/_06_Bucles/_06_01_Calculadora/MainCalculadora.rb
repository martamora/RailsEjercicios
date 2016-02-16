load 'Calculadora.rb'

calculadora = Calculadora.new

opcion = 0

while opcion != 5 do
  puts "\tCALCULADORA"
  puts "¿Qué operacion desea realizar?"
puts "1. Suma\n 2. Resta\n 3. Multiplicacion\n 4. Division\n 5. Salir"


opcion = gets.strip.to_i

    case opcion
    when  1 then 
      puts "Sumamos!!!"
      puts "Introduzca valor1"
      valor1 = gets.strip
      puts "Introduzca valor2"
      valor2 = gets.strip
      calculadora.resultadosuma valor1, valor2
      
    when 2 then 
      puts "Restamos!!!"
      puts "Introduzca valor1"
      valor1 = gets.strip
      puts "Introduzca valor2"
      valor2 = gets.strip
      calculadora.resultadoresta valor1, valor2
      
    when 3 then 
      puts "Multiplicamos!!!"
      puts "Introduzca valor1"
      valor1 = gets.strip
      puts "Introduzca valor2"
      valor2 = gets.strip
      calculadora.resultadomulti valor1, valor2
      
    when 4 then 
      puts "Dividimos!!!"
      puts "Introduzca valor1"
      valor1 = gets.strip
      puts "Introduzca valor2"
      valor2 = gets.strip
      calculadora.resultadodivision valor1, valor2
      
    when 5 then 
      puts "Salimos!!!"
    end
end

