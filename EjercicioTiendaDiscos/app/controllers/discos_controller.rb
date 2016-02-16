class DiscosController < ApplicationController
  def index
    
  end
  def create
    @disco = Disco.new
    @disco.nombre=params[:nombre]
    @disco.artista=params[:artista]
    @disco.anio=params[:anio]
    @disco.save #con esto salvamos el disco en la BBDD
  end
end
