# Se tienen las clases Rectangulo y Cuadrado cuyos constructores reciben las medidas de los lados
# correspondientes.


# Se pide:
# Agregar un método de instancia llámado lados en ambas clases. El método debe imprimir un string
#  con las medidas de los lados.
# Crear un método llamado perimetro que reciba dos argumentos (lados) y devuelva el perímetro.
# Crear un método llamado # area que reciba dos argumentos (lados) y devuelva el área.
# Instanciar un Rectangulo y un Cuadrado.
# Imprimir el área y perímetro de los objetos instanciados utilizando los métodos implementados.



class Rectangulo
  def initialize(largo, ancho)
    @largo = largo
    @ancho = ancho
  end
  def lados
    puts "largo: #{@largo} ancho: #{@ancho}"
  end
  def perimetro
    puts "perimetro: #{@largo+@ancho}"
  end
  def area
    puts "area: #{@largo*@ancho}"
  end
end

class Cuadrado
  def initialize(lado)
    @lado = lado
  end
  def lados
    puts "lado: #{@lado}"
  end
  def perimetro
    puts "perimetro: #{@lado*2}"
  end
  def area
    puts "area: #{@lado**2}"
  end
end
puts 'rectangulo'
rec = Rectangulo.new(3,5)
rec.lados
rec.perimetro
rec.area
puts 'cuadrado'
cuad = Cuadrado.new(8)
cuad.lados
cuad.perimetro
cuad.area