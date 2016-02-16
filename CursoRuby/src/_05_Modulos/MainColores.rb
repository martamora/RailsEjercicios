load "ModuloColores.rb"

puts "Probando el modulo de colorines"
puts "Rojo:#{ModuloColores::RED}"
puts "Verde:#{ModuloColores::GREEN}"
puts "Azul:#{ModuloColores::BLUE}"

puts "Llamando al método RGB: #{ModuloColores::getRGB(255,255,255)}"
