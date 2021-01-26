class Human
    attr_accessor :strength :intelligence :stealth :health

    def initialize
        @strength = 3
        @stealth = 3
        @intelligence = 3
        @health = 3
    end
    
    def attack(obj)
        if obj.class.ancestors.include?(Human)
            obj.health -= 10
            true
        else
            false
        end
    end
  end

  b = Human.new
  j = Human.new
  
  j.attack(b)

  p b
  