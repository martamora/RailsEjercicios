class Ordenador
  def initialize marca, sistemaoperativo, procesador, ram, almacenamiento, tgrafica, mac_address
    @marca = marca
    @sistemaoperativo = sistemaoperativo
    @procesador = procesador
    @ram = ram
    @almacenamiento = almacenamiento
    @tgrafica = tgrafica
    
    @mac_address = mac_address
    
  end
  def setProcesador procesador
    @procesador = procesador
  end
  
  def setRam  ram
    @ram = ram
  end
  
  def setAlmacenamiento almacenamiento
    @almacenamiento = almacenamiento
  end
    
    def setTgrafica tgrafica
      @tgrafica = tgrafica
    end
    def setPrecio precio
      @precio = precio
    end
    
    def precio_total
      @procesador.precio + @almacenamiento.precio + @tgrafica.precio + @ram.precio
    end
    
    def setMac_address mac_address
      @mac_address=mac_address
    end
 
  def to_s
    resultado = "Especificaciones:\n Marca: #{@marca}\n Sistema Operativo: #{@sistemaoperativo}\n Procesador: #{@procesador}\n Memoria Ram: #{@ram}\n Almacenamiento: #{@almacenamiento}\n Tarjeta Grafica: #{@tgrafica} \n Precio Total: #{self.precio_total}\n Direccion: #{@mac_address}"
  end

end
