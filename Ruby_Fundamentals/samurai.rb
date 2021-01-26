puts 'Samurai'
require_relative 'human'

class Samurai < Human
    @no_of_samurai = 0

    def initialize
        @no_of_samurai += 1
        @@health = 200
    end

    def death_blow(obj)
        if obj.class.ancestors.include?(Human)
            obj.health == 0
            true
        else
            false
        end
    end

    def meditate
        @@health == 200
    end

    def how_many
        puts @no_of_samurai
        self
    end

end