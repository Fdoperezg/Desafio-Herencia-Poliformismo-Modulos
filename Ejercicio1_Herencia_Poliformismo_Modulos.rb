class Person
    attr_accessor :first_name, :last_name, :age #Podría no ponerse, pues no se usan en este caso específico. Sin embargo, suele ponerse siempre. Ruby on Rails lo pone siempre. 
    def initialize(first_name, last_name, age) # type)
        @first_name = first_name
        @last_name = last_name
        @age = age
        #@type = type
    end

    def birthday
        @age += 1
    end
end

class Student < Person
    def talk
        puts "¿Aquí es la clase de programación con Ruby?"
    end

    def introduce
        puts "Hola profesor. Mi nombre es #{@first_name} #{@last_name}."
    end
end
    
class Teacher < Person
    def talk
        puts "Bienvenidos a la clase de programación con Ruby!"
    end

    def introduce
        puts "Hola alumnos. Mi nombre es #{@first_name} #{@last_name}."
    end
end
    
class Parent < Person
    def talk
        puts "¿Aquí es la reunión de apoderados?"
    end

    def introduce
        puts "Hola. Soy uno de los apoderados. Mi nombre es #{@first_name} #{@last_name}."
    end
end

alexis = Student.new('Alexis', 'Barrera', 34)
luis = Teacher.new('Luis', 'Cancino', 55)
ignacio = Parent.new('Ignacio', 'Barrera', 65)

puts alexis.talk
puts alexis.introduce

puts luis.talk
puts luis.introduce

puts ignacio.talk
puts ignacio.introduce

=begin
    def talk
        if @type == "Student"
        puts "Aquí es la clase de programación con Ruby?"
        elsif @type == "Teacher"
        puts "Bienvenidos a la clase de programación con Ruby!"
        elsif @type == "Parent"
        puts "Aquí es la reunión de apoderados?"
    end
end

    def introduce
        if @type == "Student"
        puts "Hola profesor. Mi nombre es #{@first_name} #{@last_name}."
        elsif @type == "Teacher"
        puts "Hola alumnos. Mi nombre es #{@first_name} #{@last_name}."
        elsif @type == "Parent"puts "Hola. Soy uno de los apoderados. Mi nombre es #{@first_name} #
        {@last_name}."
        end
    end
end
=end