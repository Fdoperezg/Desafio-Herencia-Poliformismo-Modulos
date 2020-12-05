require 'byebug'

module Habilidades
    module Volador
        def volar
            'estoy volandooooo!'
        end
        def aterrizar
            'estoy cansado de volar, voy a aterrizar'
        end
    end


    module Nadador
        def nadar
            'estoy nadando!'
        end
        def sumergir
            'glu glub glub glu'
        end
    end

    module Caminante
        def caminar
            'puedo caminar!'
        end
    end
end

module Alimentacion
    module Herbivoro
        def comer
            'puedo comer plantas!'
        end
    end


    module Carnivoro
        def comer
            'puedo comer carne!'
        end
    end
end

class Animal
    attr_accessor :nombre
    def initialize(nombre)
        @nombre = nombre
    end
end

#Hijos de la clase Animal
class Ave < Animal
    include Habilidades::Volador
    include Habilidades::Caminante
    include Alimentacion::Herbivoro
end

class Mamifero < Animal
    include Habilidades::Nadador
    include Habilidades::Caminante
    include Alimentacion
end

class Insecto < Animal
    include Habilidades::Caminante
    include Alimentacion::Herbivoro
end

#Hijos de la clase Ave
class Pinguino < Ave
    include Habilidades::Nadador
    include Habilidades::Caminante
end

class Paloma < Ave
    include Habilidades::Volador
    include Habilidades::Caminante
    include Alimentacion::Herbivoro
end

class Pato < Ave
    include Habilidades
    include Alimentacion::Herbivoro
end

#Hijos de la clase Mamífero
class Perro < Mamifero
    include Habilidades::Nadador
    include Habilidades::Caminante
    include Alimentacion::Carnivoro
    
    def comer  #En este caso en específico, se sobreescribre el método comer.
        "como Doko"
    end
    
    def sumergir
        "no me puedo sumergir... está muy helada"
    end
end

class Gato < Mamifero
    include Habilidades::Caminante
    include Alimentacion::Carnivoro
end

class Vaca < Mamifero
    include Habilidades::Caminante
    include Alimentacion::Herbivoro
end

#Hijos de la clase Insecto
class Mosca < Insecto
    include Habilidades::Volador
    include Habilidades::Caminante
    include Alimentacion::Herbivoro
end

class Mariposa < Insecto
    include Habilidades::Volador
    include Habilidades::Caminante
    include Alimentacion::Herbivoro
end

class Abeja < Insecto
    include Habilidades::Volador
    include Habilidades::Caminante
    include Alimentacion::Herbivoro
end

#Instancias
vaca1 = Vaca.new('lola')
pato1 = Pato.new('Hugo')
perro1 = Perro.new('Cachupin')

#byebug

#Llamados
puts "Soy una vaca y #{vaca1.comer}"
puts "Soy un pato y #{pato1.volar}"
puts "Soy un perro y #{perro1.sumergir}"