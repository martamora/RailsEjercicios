class Registro < ActiveRecord::Base
  
  #Con esta línea validamos que no podamos meter en BBDD un titulo que esté vacío
  validates_presence_of :titulo, message: 'El título no puede estar vacío'
  
  #Podemos validar porque no se repita un campo
  validates_uniqueness_of :titulo, message: 'El título debe ser único, está repetido'
  
  #Podemos hacer validaciones de tamaño
  validates_length_of :comentarios, :within=>5..200, message: 'El comentario debe tener entre 5 y 200 caracteres'
  #podemos utilizar otras opciones en vez de ':within'
  # ':minimun' Establece un tamaño mínimo
  # 'maxinum' Establece un tamaño máximo
  
  #decimos que queremos utilizar el metodo como validador personalizado
  validate :validacion_titulo_Nota
  
  def validacion_titulo_Nota
    if titulo =! nil && titulo=="Nota" then
      errors.add(:titulo, "El titulo no puede ser 'Nota'")
      
    end
  end
end
