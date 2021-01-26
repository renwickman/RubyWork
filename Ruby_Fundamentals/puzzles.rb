# Create an array with the following values: 
# 3,5,1,2,7,9,8,13,25,32. Print the sum of all numbers in the array. 
# Also have the function return an array that only include 
# numbers that are greater than 10 
# (e.g. when you pass the array above, 
# it should return an array with the values of 13,25,32 - 
# hint: use reject or find_all method)

values = [3,5,1,2,7,9,8,13,25,32]
puts values
sum=0
for i in 0...values.length
    sum+=values[i]
end

puts sum
values.find_all {|i| i> 10}



# Create an array with the following values: 
# John, KB, Oliver, Cory, Matthew, Christopher. 
# Shuffle the array and print the name of each person. 
# Have the program also return an array with names that 
# are longer than 5 characters.

names = ['John', 'KB', 'Oliver', 'Cory', 'Matthew', 'Christopher']
puts names.shuffle
puts names.find_all {|i| i.length>5}

# Create an array that contains all 26 letters 
# in the alphabet (this array must have 26 values). 
# Shuffle the array and display the last letter of the array. 
# Have it also display the first letter of the array. 
# If the first letter in the array is a vowel, have it 
# display a message.

alpha = ['a'..'z']
puts alpha
puts alpha[alpha.length-1]
puts alpha[0]
puts alpha[0]+" is a vowel" if ['a', 'e', 'i', 'o', 'u'].include? alpha[0]

# Generate an array with 10 random numbers between 55-100.

num=[]
for i in 1..10
    num.push rand(55..100)
end
puts num

# Generate an array with 10 random numbers between 55-100 
# and have it be sorted (showing the smallest number 
# in the beginning). Display all the numbers in the array. 
# Next, display the minimum value in the array as well as 
# the maximum value

allnums=[]
for i in 1..10
    allnums.push rand(55..100)
end
puts allnums.sort
puts 'max: '+allnums.max.to_s
puts 'min: '+allnums.min.to_s


# Create a random string that is 5 characters long 
# (hint: (65+rand(26)).chr returns a random character)

word=''
for i in 1..5
    word+=(65+rand(26)).chr
end
puts word


# Generate an array with 10 random strings that are each 5 
# characters long

arr = []
for j in 1..10
    word = ''
    for i in 1..5
        word+=(65+rand(26)).chr
    end
    arr.push word.downcase.capitalize
end
puts arr
