class Rectangulo
  def initialize(largo, ancho)
    @largo = largo
    @ancho = ancho
  end

  def lados
    puts "\nLos lados del rectángulo miden #{@largo} y #{@ancho}"
  end

  def perimetro
    2*@largo + 2*@ancho
  end

  def area
    @largo * @ancho
  end
  
end
  
class Cuadrado
  def initialize(lado)
    @lado = lado
  end

  def lados
    puts "\nLos lados del cuadrado miden #{@lado}"
  end

  def perimetro
    4 * @lado
  end

  def area
    @lado ** 2
  end

end
  
rectangle = Rectangulo.new(3, 2)
square = Cuadrado.new(5)

rectangle.lados
puts "\nEl perímetro del rectángulo es #{rectangle.perimetro} y su área es #{rectangle.area}"
square.lados
puts "\nEl perímetro del cuadrado es #{square.perimetro} y su área es #{square.area}"