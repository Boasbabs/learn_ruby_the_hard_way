class Human
	def identify
		puts "I'm a person."
	end
	def train_toll(age)
		if age < 12
			puts "Reduced fare."
		else
			puts "Normal fare."
		end
	end
end

class Student1<Human
	def identify
		puts "I'm a Student."
	end
end
class Student2<Human
	def identify
		super
		puts "I'm a Student too."
	end
end
Student2.new.identify
# Human.new.identify

class Dishonest<Human
	def train_toll(age)
		super(11) # we want a cheap fare
	end
end
Dishonest.new.train_toll(25)

class Honest<Human
	def train_toll(age)
		super(age) # pass the argument we were given
	end
end
Honest.new.train_toll(25)