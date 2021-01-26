age = 22

if age >= 21
  puts "Welcome to the party"
else
  puts "Not yet"
end

number = 15
if number % 3 == 0 && number % 5 == 0
  puts "FizzBuzz"
elsif number % 3 == 0
  puts "Fizz"
elsif number % 5 == 0
  puts "Buzz"
end


unless age < 21
    puts "Welcome to the party"
  else
    puts "Not yet"
  end

  i = 0
  num = 5
  while i < num do
     puts "Inside the loop i = #{i}"
     i +=1
  end

  for i in 0..5 
    puts "Value of local variable is #{i}" 
  end
  

  for i in 0..5 
    puts "Value of local variable is #{i}" 
    break if i == 2
  end

  for i in 0..5 
    next if i == 2
    puts "Value of local variable is #{i}"   
  end
  
  
  def hello_world
    puts "hello world"
  end
  hello_world

  def say_hello name1, name2
    puts "hello, #{name1} and #{name2}"
  end
  say_hello "oscar", "eduardo" # => "hello, oscar and eduardo"

  def say_hello name1, name2
    puts "hello, #{name1} and #{name2}"
  end
  say_hello "oscar", "eduardo" # => "hello, oscar and eduardo"
