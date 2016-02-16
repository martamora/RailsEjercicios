class Precio
  
  attr_accessor :precio
  
    def initialize (precio)
      @precio=precio
    end
    
    def to_s
    "#{@precio}"
    end
  
end