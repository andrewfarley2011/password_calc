
def calc (function, num1, num2)
	if function == "addition"
		calc = num1 + num2 

	elsif function == "subtract"
		calc = num1 - num2

	elsif function == "multiply"
		calc = num1 * num2

	elsif function == "divide"
		if num2 == 0
			calc = "Does not exist."
		else 
			calc = num1 / num2
		end
	else
	end
	calc.to_s
end 
