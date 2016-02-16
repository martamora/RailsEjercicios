#la exclamación antes de la variable en la condición se utiliza para negar "Si no !varible entonces"
#comprueba si es true o false, y así realiza la función. Delimitas cuál es la función y actua
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