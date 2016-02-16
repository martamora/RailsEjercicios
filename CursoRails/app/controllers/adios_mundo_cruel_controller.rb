class AdiosMundoCruelController < ApplicationController
  
  #Pasos para generar manualmente un controller
  #1) Crear el archivo adios_mundo_cruel_controller.rb en la carpeta app/controllers/concerns
  #2) Crear la vista adios_mundo_cruel/despedir.html.erb en la caperta views
  
  def despedir
    @despido = "Adiós con el corazón que con el alma no puedo, al despedirme de ti, al despedirme me muero"
    puts "Esto es una prueba mas de controlador"
  end
end
