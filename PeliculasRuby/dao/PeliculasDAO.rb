class PeliculasDAO
  @@almacenPeliculas = []
  @@id = 0
  @@contador=0
 
  def insert (pelicula)
    
    if @@contador < 10 then
    pelicula.id=@@id
    @@id+=1
    @@almacenPeliculas << pelicula
    @@contador+=1
    else 
      puts" El Almacén de películas está lleno"
    end  
  end
  
  def delete (idPelicula)
    for nuevaPelicula in @@almacenPeliculas
      if nuevaPelicula.id == idPelicula then
        @@almacenPeliculas.delete nuevaPelicula
        return
      end
    end  
    i+=1
    puts "Borro pelicula"
  end
  def list
    @@almacenPeliculas
  end
  def update (pelicula)
    i=0
    for nuevaPelicula in @@almacenPeliculas
      if nuevaPelicula.id == pelicula.id then
        @@almacenPeliculas[i]=pelicula
        return true
      end  
      i+=1
    end
  end
  end
  