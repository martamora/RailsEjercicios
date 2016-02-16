
#Los métodos en ruby se crean mediante la palabra 'def'
def metodo
  puts "Hola Método"
end
metodo()
#Si damos a un método el mismo nombre que el anterior, sobreescribirá el anterior
def metodo
  puts "Hola Método 2"
end

metodo

def saludar (nombre)
  puts "Hola #{nombre}!"
end
saludar "Marta"

#valores de retorno
def devolverSaludo
  "Hola devolverSaludo"
end
valorDeRetorno = devolverSaludo
puts valorDeRetorno

  #En ruby podemos dar valores por defecto a los parámetros.
  #En este caso estamos inicializando valor2 a 0.
  #o lo que es lo mismo, seguimos necesitando mandar un parámetro, pero el segundo es optativo
  
def sumar (valor1, valor2)
  valor1 + valor2
end
 puts sumar 55, 127
 
def sumar (valor1, valor2=0, valor3)
  puts "#{valor1}, #{valor2}, #{valor3}"
  valor1+valor2+valor3
end
puts sumar 2,5
puts sumar 3,3,3

def metodo
  puts"La variable externa #{variableExterna}"
end
  
def metodo
  #La siguiente linea da error ya que no hay visisbilidad desde main al metodo
  #puts "la variable externa #{variableExterna}"
  variableInterna = "Pepe"
end
metodo

#Esto daría error ya que no tenemos visibilidad
#puts variableInterna

def metodo (*valores)
  puts valores
  puts "--------------------"
  puts valores [0]

end
metodo "hola", "como estas", "yo bien", "etc...."
metodo

def sumaCompleta (*valores)
  resultado = 0
  
  for valor in valores
    #resultado = resultado + valor
    resultado += valor
    
  end
  #return resultado
  resultado
end
puts sumaCompleta 1,2,3,8
puts sumaCompleta 99,23
puts sumaCompleta
