class Vehicle

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
    @@contador = 0

    def initialize(model, year)
        super
        @@contador += 1
    end

    def self.contador_instancias
        @@contador
    end

    def engine_start
        super
        puts "El motor se ha encendido"
    end
end

10.times do |i|
Car.new('Camaro', 2018).engine_start
end

puts Car.contador_instancias