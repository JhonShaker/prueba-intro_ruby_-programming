# Prueba - Introducción a la programación con Ruby
# Aplicando los conceptos y herramientas aprendidas hasta ahora, nos enfrentamos a una solicitud de un cliente en el cual nos solicita que hagamos refactorización del siguiente código.

# Utilizando los principios de Herencia y Polimorfismo, refactoriza el siguiente código para eliminar la innecesaria cantidad de sentencias if en los métodos talk e introduce.

# Clase padre Person la cual ahora recibe solo 2 parámetros
class Person
  def initialize(first, last)
    @first_name = first
    @last_name = last
  end

  def birthday
    @age += 1
  end
end
# Subclase Student que hereda de la Clase Person
class Student < Person
  def talk
    puts 'Aquí es la clase de programación con Ruby?'
  end

  def introduce
    puts "Hola profesor. Mi nombre es #{@first_name} #{@last_name}."
  end
end
# Subclase Teacher que hereda de la Clase Person
class Teacher < Person
  def talk
    puts 'Bienvenidos a la clase de programación con Ruby!'
  end

  def introduce
    puts "Hola alumnos. Mi nombre es #{@first_name} #{@last_name}."
  end
end
# Subclase Parent que hereda de la Clase Person
class Parent < Person
  def talk
    puts 'Aquí es la reunión de apoderados?'
  end

  def introduce
    puts "Hola. Soy uno de los apoderados. Mi nombre es #{@first_name}
#{@last_name}."
  end
end
# Instancia y Llamado de Metodos de Subclase Student
estudiante = Student.new("Inés", "Tornudo") # Instancia y entrega de parametros
estudiante.talk 
estudiante.introduce
# Instancia y Llamado de Metodos de Subclase Teacher
profesor = Teacher.new("Helen", "Chufe") # Instancia y entrega de parametros
profesor.talk 
profesor.introduce
# Instancia y Llamado de Metodos de Subclase Parent
apoderado = Parent.new("Elton", "Tito") # Instancia y entrega de parametros
apoderado.talk 
apoderado.introduce

# Requerimientos:
# 1. Identificar las posibles subclases que aparecen en el código a refactorizar. Cada una de ella contendrá los métodos correspondientes, talk e introduce. Hint: Teacher sería una clase.

# 2. A partir de la refactorización del código se debe generar herencia de ancestros aplicando la sintaxis de Ruby, esto para la subclases.

# 3. El método introduce al imprimir el mensaje muestra el nombre y apellido haciendo uso de interpolación de variables de instancia.

# 4. Al generar las instancias de cada objeto, se muestra un mensaje en función del método que sea invocado.