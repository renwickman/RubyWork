require_relative 'mammal'

class Lion < Mammal
    @@health = 170

    def fly
        @@health -=10
        self
    end

    def attack_town
        @@health -=50
        self
    end

    def eat_humans
        @@health +=20
        self
    end

    def display_lions_health
        puts "This is a Lion"
        display_health
    end

end

scar = Lion.new.attack_town.attack_town.attack_town
scar.eat_humans.eat_humans.fly.fly
scar.display_lions_health
