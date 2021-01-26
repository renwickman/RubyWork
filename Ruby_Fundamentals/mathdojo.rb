class MathDojo
    attr_accessor :sum
    def initialize
        @sum = 0
    end 
    def add (*num)
        if num.class == Array
            @sum += num.flatten.reduce(:+)
        else
            @sum += num
        end
        self
    end
    def subtract (*num)
        if num.class == Array
            @sum -= num.flatten.reduce(:+)
        else
            @sum -= num
        end
        self
    end
    def result
        puts "result #{@sum}"
        self
    end
end

  

  challenge1 = MathDojo.new.add(2).add(2, 5).subtract(3, 2).result 
  challenge2 = MathDojo.new.add(1).add([3, 5, 7, 8], [2, 4.3, 1.25]).subtract([2,3], [1.1, 2.3]).result 

 