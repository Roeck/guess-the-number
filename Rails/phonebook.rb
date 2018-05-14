# coding: UTF-8

phonebook = {
	Anna: "646 646 6464",
	Peter: "656 656 6565"
	
}

while true
	puts ''
	puts '1 - Add'
	puts '2 - Update'
	puts '3 - Show'
	puts '4 - Delete'
	
	print 'Select an option: '
    select = gets.chomp
    puts ''

    case select
    when '1'
    	print 'Enter the contact name: '
    	name = gets.chomp
    	if phonebook[name.to_sym].nil?
    		print 'Enter phone: '
    		phone = gets.chomp
    		phonebook[name.to_sym] = phone

    	else 
    		puts 'This name already exists!'
    	end

    when '2'
    	puts 'Which name do you want to update?'
    	name = gets.chomp
    	if phonebook[name.to_sym].nil?
    		puts 'This name does not exist!'
    	else
    		print 'What is the phone number?'
    		phone = gets.chomp
    		phonebook[name.to_sym] = phone
    	end

    when '3'
    	phonebook.each do |name, phone|
    		puts "Name: #{name} - Phone: #{phone}"
    	end

    when '4'
    	puts 'Which name would you like to delete?'
    	name = gets.chomp
    	if phonebook[name.to_sym].nil?
    		puts 'This name does not exist'
    	else
    		phonebook.delete(name.to_sym)
    		puts "#{name} was deleted"
    	end
    else
    	puts 'Sorry, invalid option'
    end

end


