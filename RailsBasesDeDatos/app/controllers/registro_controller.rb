class RegistroController < ApplicationController
  def new
    #Registro.all nos devuelve todos los registros de la bbdd
    #Al herededar de ActiveRecord, estarán automáticamente implementados
    #sus accesos. Los registros van en un array
    @registros = Registro.all
    if @registros.size >0
      puts @registros[0].titulo
      puts @registros.first.id
      puts @registros.last.id
    end
  end
  
  def create
    titulo=params[:titulo]
    comentarios=params[:comentarios]
    parametrosHash = {}
    #La clave corresponde con el nombre de la columan de la base de datos
    parametrosHash[:titulo]=titulo
    parametrosHash[:comentarios]=comentarios

    #Le pasamos el Hash
    @registro=Registro.create(parametrosHash)
    #Registro.create puede devolverme errores en caso de que haya habido algún error al insertar
    if @registro.errors.any? then
      puts "BDERROR: Error"
    end
    @registros= Registro.all
    render "new"
  end
  
  def delete
    titulo = params[:titulo]
    #El método delete automáticamente borra por id. 
    #Tb le podemos pasar un array de ids y tb lo borra.
    #Registro.delete id
    #Podemos tb borrar por otros campos. 
    #Pero deberemos hacer una búsqueda primero.
    #Esto nos devuelve una lista de coincidencias
    registrosEncontrados = Registro.where(:titulo => params[:titulo])
    registro = registrosEncontrados[0]
    registro.destroy
    @registros=Registro.all
    render :new
  end
  def update_vista
    @registro=nil
    id=params[:id].to_i
    @registro= Registro.find id
    
  end
  def update
    id=params[:id].to_i
    titulo=params[:titulo]
    comentarios=params[:comentarios]
    
    hash= {}
    hash[:id]=id.to_i
    hash[:titulo]=titulo
    hash[:comentarios]= comentarios
    
    registro=Registro.find id
    update=registro.update_attributes(hash)
    #update contiene un boolean de si ha ido bien o no
    #registro contiene el activerecord con los posibles errores
    if update
      puts "Registro actualizado"
      render :new
    else
      puts "Registro no actualizado"
      render :update_vista
    end
    #@registro= Registro.all
    
  end
  def buscar_por_comentario
    comentarios = params[:comentarios]
    @registrosEncontrados = Registro.where(:comentarios => comentarios)
    render :busquedas
    
  end
  
end


