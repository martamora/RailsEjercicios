load 'Contacto.rb'

load 'Direccion.rb'

direccion1= Direccion.new("Mas", "25", "28560", "Alcoy", "España")
direccion2= Direccion.new("Falsa", "66", "28369", "Madrid", "España")
direccion3= Direccion.new("Judas", "99", "28789", "Albacete", "España")
 
contacto1 = Contacto.new("47034959M", "Felipe", "+34605389613", "xxxxx@gmail.com", direccion1)
contacto2 = Contacto.new("50016898R", "Juan", "+34605789622", "noos@gmail.com", direccion2)
contacto3 = Contacto.new("65012345X", "Froilan", "+34689532146", "santos@outlook.es", direccion3)



puts contacto1
puts contacto2
puts contacto3
