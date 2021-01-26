puts 'Ninja'
require_relative 'human'

class Ninja < Human
    def initialize
        @@stealth = 175
    end

    def steal(obj)
        if obj.class.ancestors.include?(Human)
            @@health +=10
            self
            true
        else
            false
        end
    end

    def get_away
        @@health -=15
    end

end