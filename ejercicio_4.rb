class Alumno
    def initialize(nombre, nota1, nota2, nota3, nota4)
      @nombre = nombre
      @nota1 = nota1
      @nota2 = nota2
      @nota3 = nota3
      @nota4 = nota4
    end
  
    def self.read_file(archivo = 'notas.txt')
      alumnos = []
      data = []
        File.open(archivo, 'r') { |file| data = file.readlines }
        data.each do |alumno|
          alumnos << Alumno.new(*alumno.split(', '))
        end
      alumnos #imprime la última línea que es la colección de objetos
    end
end

print Alumno.read_file