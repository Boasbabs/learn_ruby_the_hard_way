def while_count
	numbers = []
	checker = 6
	i = 0
	while i < checker
		puts "At the top i is #{i}"
		numbers.push(i)

		i += 1 
		puts "numbers now: ", numbers
		puts "At the bottom i is #{i}"
	end
	return numbers
end
puts while_count
# remember you can write this 2 other ways?
puts "Second way"
while_count.each { |i| print i }

while_count.each do |num|
	print num 
end