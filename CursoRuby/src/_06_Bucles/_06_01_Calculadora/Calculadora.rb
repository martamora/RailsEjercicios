class Calculadora
 def initialize
   @resultado = 0
 end
def suma valor1, valor2
 @resultado = valor1.to_f + valor2.to_f
 @resultado
 #habría que meter los resultados en un array
 #suma =[resultado]
 end
   
 def resta valor1, valor2
 @resultado = valor1.to_f - valor2.to_f
 @resultado
 end
   
 def multi valor1, valor2
 @resultado = valor1.to_f * valor2.to_f
 @resultado
 end
 
 def division valor1, valor2
 @resultado = valor1.to_f / valor2.to_f
 @resultado
 end
 
 
 def resultadosuma valor1, valor2
  suma valor1,valor2
   puts "El resultado de la suma es #{@resultado}"
 end   
 def resultadoresta valor1, valor2
  resta valor1,valor2
   puts "El resultado de la resta es #{@resultado}"
 end
 def resultadomulti valor1, valor2
  multi valor1,valor2
   puts "El resultado de la multiplicación es #{@resultado}"
 end   
 
 def resultadodivision valor1, valor2
  division valor1,valor2
   puts "El resultado de la división es #{@resultado}"
 end   

end