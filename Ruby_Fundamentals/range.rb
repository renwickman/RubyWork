x = (1..20)

puts "Class Name: #{x.class}"

puts "It does include 3!" if x.include? 3
puts "It does include 5!" if x.include? 5
puts "It does include 15!" if x.include? 15

puts "The last number of this range is " + x.last.to_s

puts "The maximum number of this range is " + x.max.to_s
puts "The minimum number of this range is " + x.min.to_s

y = ('a'..'t')

puts "Class Name: #{y.class}"

puts y.to_a.shuffle.to_s