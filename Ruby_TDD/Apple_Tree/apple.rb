class Tree
    attr_accessor :age
    attr_reader :height, :count

def initialize
    @age = 0
    @height = 5
    @count = 0
end

def year_passed
    @age += 1
    @height += ten_percent(@height)

    if @age <= 3
        @count = 0
    elsif @age > 10
        @count = @count
    else
        @count += 2
    end
end

def pick_apples
    @count = 0
end

private
    def ten_percent height
        (height * 0.1).round(2)
    end
end