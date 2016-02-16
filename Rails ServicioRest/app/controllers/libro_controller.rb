class LibroController < ApplicationController
  
  def index
    puts "Aquí se supone que debemos devolver todos los libros"
  end
  
  def new
    puts "Aquí se supone que debemos crear el nuevo libro"
  end
  def edit
    id=params[:id]
    puts "Aquí debemos editar el libro con id #{id}"
  end
  def show
    id=params[:id]
    puts "Se supone que debemos devolver el libro con el id #{id}"
    @libro=Libro.new
    @libro.id = id
    @libro.titulo = "Cien años de soledad"
    @libro.autor = "Gabriel García Márquez"
    respond_to {
      |format|
        format.json{
          render :json => @libro.to_json
        }
        format.html {
          render :index
        }
    }
    
  end
  
  def metodo_prueba
    codigo =params[:codigo]
    @libro=Libro.new
    @libro.id = codigo
    @libro.titulo = "Fray Perico y su Borrico"
    @libro.autor = "Juan Muñoz Martin"
    render :index
  end
    
end
