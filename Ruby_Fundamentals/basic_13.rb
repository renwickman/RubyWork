# Print 1-255

def printNum
    for i in 1..255 
        puts i
    end
end


# Print odd numbers between 1-255

def oddNum
    for i in 1..255 
        if i%2 == 1
        puts i
        end
    end
end


# Print Sum

def numSum
    sum = 0
    for i in 0..255 
        sum = i + sum
        puts "#{i} #{sum}"
    end
end

# Iterating through an Array

def iterArr
    arr = [1, 3, 5, 7, 9]
    arr.each{|i| puts i}
end


# Find Max

def maxNum
    arr = [-3, -5, -7]
    puts [arr.max]
end

# Get Average

def avgNum
    arr = [1, 5 , 10, -2]
    sum = 0
    arr.each{|i| sum += i}
    avg = sum.to_f / arr.length.to_f
    puts [avg]
end

# Array with Odd numbers

def oddNum arr
    puts (1..255).select {|i| i%2 != 0}
end


# Greater Than Y

def greaterThan(arr, y)
    puts arr.count {|i| i > y}
end

# Square the Values

def squareNum
    arr = [1, 5, 10, -2]
    puts arr.collect{|i| i * i}
end


# Eliminate Negative numbers

def elimNeg
    arr = [-9, -7, 7, 9]
    puts arr.reject {|i| i< 0 }
end


# Max, Min, and Average

def minMaxAvg
    arr = [1, 5 , 10, -2]
    sum = 0
    arr.each{|i| sum += i}
    avg = sum.to_f / arr.length.to_f
    puts [arr.min, arr.max, avg]
end


# Shifting the Values in the Array

def shiftValue
    arr = [1, 5, 10, -2]
    arr.shift
    arr.push(0)
    puts arr
end


# Number to String

def numString
    arr = [-1, -3, 2]
    puts arr.collect {|i| i <0? 'dojo':i}
end



