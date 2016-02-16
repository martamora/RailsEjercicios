variable1 = 1

if variable1 == 1
  puts "Pues va a ser que sí"
end

if variable1 != 1
  puts "Pues va a ser que no es dos!"
end

if variable1 == 2
  puts "Pues va a ser que sí porque lo digo yo!"

else
  puts "Llegó el else!"
end

if variable1 == 1 || variable1 == 2
  puts "Pues va a ser que es uno de los dos!"
end
if variable1 >= 0
  puts "Pues va a ser positivo, que nunca negativo!"
end
if variable1 > 0 then
  puts "Mayor que cero"
elsif variable1 <0
  puts "Menor que cero"
else 
 puts"por narices es cero!"
end
puts "Es cero" if variable1 ==0
puts variable1==0? "Es cero" :"no es cero"
puts variable1>0?"Es mayor que cero":"otro"
estaVacia = nil
if !estaVacia then
  puts"La variable es nula!"
end


variable = nil

if !variable then
 puts "La variable es nula!"
end
unless variable
  puts "variable es nula"
end
variable = 3
if variable ==1 then
  puts "Es uno"
elsif variable == 2 then
  puts "Es dos"
elsif variable == 3 then
  puts "Es tres"
else 
  puts "No es ni uno ni 2 ni 3"  
end

case
  when variable == 1 then
    puts "Es uno con el else"
  when variable == 2 then
    puts "Es dos con el case" 
  else
    puts "No es ni 1 ni 2 con el case" 
end

case variable
when 1 then
  puts "Es uno"
when 2 then
  puts "Es dos"
when 3 then
  puts "Es tres"
else 
  puts "ni idea"
end

case variable
when 1..10 then
  puts "Está entre el 1 y el 10"
when 11..20 then
  puts "Está entre el 11 y el 20"
else 
  puts "ni idea"
end  

