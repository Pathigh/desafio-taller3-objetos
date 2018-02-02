# Se tiene la clase Vehicle que recibe como argumento un modelo y un año. El método engine_start enciende el vehículo.
# Se pide:
# Crear una clase Car que herede de Vehicle El constructor de Car , además de heredar las propiedades de 
# Vehicle, debe incluir un contador de instancias de Car.
# Crear un método de clase en Car  que devuelva la cantidad de instancias.
# El método engine_start heredado debe además imprimir 'El motor se ha encendido!'.
# Instanciar 10 Cars. Consultar la cantidad de instancias generadas de Car mediante el método de clase creado.


class Vehicle
  attr_accessor :model, :year, :start
 def initialize(model, year)
   @model = model
   @year = year
   @start = false
 end

 def engine_start
   @start = true
 end
end

class Car < Vehicle
  @@contador_de_instancias = 0
  def initialize(model, year)
    super
    @@contador_de_instancias += 1
  end

  def self.mostrar_contador
    @@contador_de_instancias
  end

  def engine_start
    super
    puts 'El motor se ha encendido!'
  end
end

marcas = ['Toyota', 'Chevrolet', 'Audi', 'Ferrari', 'SEAT', 'Citröen', 'Cherokee']

10.times do |i|
  car = Car.new(marcas.sample, rand(2000..2018))
  puts "Se ha creado un #{car.model} del año #{car.year}"
end

puts "Se ha instaciado #{Car.mostrar_contador} autos."