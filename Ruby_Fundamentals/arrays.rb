a = ["Harry", "Ron", "Hermoine", "Voldemort", "Snape", "Dumbledore"]
b = [4, 5, 3, 2, 7, 8]
c = ["Snape", 7]

# x = a+b
# puts x.to_s

# z = (a+b)-c
# puts x.to_s

# puts b.class

#using .at
puts a.at(0)
puts b.at(4)

#using .fetch
puts a.fetch(0)
puts b.fetch(4)

#using .delete
puts a.delete("Voldemort")

#using .reverse
puts a.reverse

#using .length
puts "length of a is #(a.length)"

#using .sort
puts a.sort
puts b.sort

#using .slice
puts a.slice(2, 5)
puts a.slice(1, 3)

#using .shuffle
puts a.shuffle
puts b.shuffle

#using .join
puts a.shuffle.join('-')
puts b.shuffle.join('--')

#using .insert
puts a.insert(5, "Hedwig")

#using .values_at()
puts a.values_at(0,1).join(' and ')
puts b.values_at(3,2).join(' and ')