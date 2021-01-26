y = {:f_name => "Anthony", :l_name => "Renwick"}
puts "Y is ", y
puts y[:f_name], y[:l_name]

#.delete(key)
puts "DELETING :f_name"
y.delete(:f_name)
puts "Y is now ", y

#.has_key?(key)
if y.has_key?(:f_name)
    puts "Y has a key called :f_name"
else
    puts "Y does NOT have a value called :f_name"
end

#.has_value?(value)
if y.has_value?("Renwick")
    puts "Y has a value called Renwick"
else
    puts "Y does NOT have a value called Renwick"
end

#.empty?
if y.empty?()
    puts "Y is empty"
else
    puts "Y is not empty"
end