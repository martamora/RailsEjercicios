class MusicaController < ApplicationController
  def index
    @musicas= Musica.all
  end
  
  def new
    nombre=params[:nombre]
    artista=params[:artista]
    anio=params[:anio].to_i
    
    musicaHash = {}
    musicaHash[:nombre] = nombre
    musicaHash[:artista] = artista
    musicaHash[:anio] = anio.to_i
    
    Musica.create(musicaHash)
    if @registro.errors.any? then
      puts "BDERROR: Error"
    end
    @registros= Registro.all
    render "new"
  end
    @musicas=Musica.all
    render :index
    
  end
  def borrar
    id=params[:id].to_i
    Musica.delete id
    @musicas=Musica.all
    render :index
    
  end
  def modificar_vista
    id=params[:id].to_i
    @musica=Musica.find id
    puts @musica.id
    
  end
  def modificar
    id=params[:id].to_i
    nombreNuevo=params[:nombre]
    artistaNuevo=params[:artista]
    anioNuevo=params[:anio]
    
    musicaHash = {}
    musicaHash[:nombre] = nombreNuevo
    musicaHash[:artista] = artistaNuevo
    musicaHash[:anio] = anioNuevo.to_i
    
    discoABuscar=Musica.find id
    discoABuscar.update_attributes(musicaHash)
    @musicas=Musica.all
    render :index 
  end
  def buscar_por_anio
    anio=params[:anio]
    @musicaEncontrada=Musica.where(:anio => anio)
    render :busquedas
  end
  def buscar_por_artista
    artista=params[:artista]
    @musicaEncontrada=Musica.where(:artista => artista)
    render :busquedas
  end
end
