#write your code here
def add (number1, number2)
	number1 + number2
end

def subtract(number1, number2)
	number1 - number2
end

def sum(array)
	sum = 0;
	array.each do |item|
		sum += item;
	end

	sum
end

def factorial(number)
	factorial = number
	
	while (number > 1)
		number -= 1
		factorial *= number
	end

	factorial
end

def multiply(*arguments)
	result = 1;
	arguments.each do |item|
		result *= item
	end
	result
end