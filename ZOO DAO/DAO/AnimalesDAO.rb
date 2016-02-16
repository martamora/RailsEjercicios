class AnimalesDAO
  def initialize 
    @zoo = []
    @id = 1
  end
  
  def insert (animal) 
    animal.id = @id
    @id+=1
    @zoo << animal
  end
  
  def delete (idAnimal)
    i=0
    for nuevoAnimal in @zoo
      if nuevoAnimal.id == idAnimal then
        @zoo.delete nuevoAnimal
        return
      end
    end
    i+=1
  end
  def update (nuevoAnimal)
    idAnimalNuevo = nuevoAnimal.id
    i=0
    for animal in @zoo
      if animal.id == idAnimalNuevo then
        @zoo [i] = nuevoAnimal
        return
      end
      i+=1
    end
  end
  def list
    @zoo
  end
end