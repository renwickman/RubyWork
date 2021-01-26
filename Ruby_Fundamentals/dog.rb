puts 'Dog'
require_relative 'mammal'

class Dog < Mammal

    def pet
        @@health +=5
        self
    end

    def walk
        @@health -=1
        self
    end

    def run
        @@health -=10
        self
    end

end

puppy = Dog.new.walk.walk.walk
puppy.run.run.pet
puppy.display_health


