load 'modelo_persona/Contacto.rb'
load 'modelo_persona/Direccion.rb'
load 'Ordenador.rb'
load 'Direccion.rb'
load 'Procesador.rb'
load 'Ram.rb'
load 'Almacenamiento.rb'
load 'TGrafica.rb'
load 'Precio.rb'




mac_address=Ordenador::Direccion.new("FF:23:11:78:86:78")
tgrafica =Ordenador::TGrafica.new("2GB", "NVIDIA GTX960", 80)
almacenamiento =Ordenador::Almacenamiento.new("HDD", "7200rpm", "1TB", 150)
ram =Ordenador::Ram.new("16GB", "UNB-DIMM DDR3L",328)
procesador =Ordenador::Procesador.new("8MB", "2", "340Ghz", "Intel Core i7", 278)
ordenador1=Ordenador.new("Acer", "Windows", procesador, ram, almacenamiento, tgrafica, mac_address)

direccion1= Direccion.new("Marta", "25", "28560", "Sevilla", "España")
contacto1 = Contacto.new("47034959M", "Raúl", "+34605389613", "xxxxx@gmail.com", direccion1)


puts ordenador1
puts contacto1



