
def calc (function, num_1, num_2)

	if function == "plus"
		calc = num_1.to_f + num_2.to_f

	elsif function == "-"
		calc = num_1.to_f - num_2.to_f

	elsif function == "*"
		calc = num_1.to_f * num_2.to_f

	elsif function == "/"

		if num_2 == 0
			calc = "Does not exist."
		else 
			calc = num_1.to_f / num_2.to_f
		end

	else

	end

	"%.2f" % calc.to_s
	
	# "%.2f" % allows you to limit your float to 2
	# "%.3f" % allows you to limit your float to 3

end 
