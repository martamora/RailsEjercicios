valor = 5
while valor <10 do
  puts "Valor es : #{valor}"
  valor +=1
end
for i in 5..10
  puts "Valor del for : #{i}"
end
puts i
begin
  puts "El valor de i es mayor de 5, es #{i}"
  i-=1

end while i > 5
until i == 0
  puts "La i no es cero! es #{i}"
  i -=1
end
for i in 0..2 do
  for j in 0..2 do
    puts "Fila #{i} Columna #{j}"
  end
end
