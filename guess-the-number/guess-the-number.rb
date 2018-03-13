new_game = "Y"

	while new_game == "Y"



	puts "Guess the number bewteen 1 and 100"
	your_number = gets.to_i
	puts your_number

	pc_number = Random.rand(99) + 1
	puts pc_number

	tries = 1

	while pc_number != your_number
		if pc_number > your_number
			puts "The number is bigger than #{your_number}"

		else
			puts "The number is smaller than #{your_number}"
		
		end

		tries += 1

		puts "Try again: "
		your_number = gets.to_i

  end

	puts "Congrats, the number was #{pc_number}!"
	puts "You have tried #{tries} times"

	puts "Would you like to try again? (Y/N)"
	new_game = gets.chomp

end

puts "Thanks for playing!"