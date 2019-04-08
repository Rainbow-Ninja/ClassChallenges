youre_here = true

phonebook = {"Bird" => ["Big", "95890676", "Best friend to Mr Snuffleupagus", "123 Sesame Street, Brownstone"], "Snuffleupagus" => ["Aloysius", "95282040", "Best friend to Big Bird", "Sesame Street, Brownstone"], "Grouch" => ["Oscar the", "95212342", "Local grouch", "'The Trash Can' Sesame Street, Brownstone"]}

def view(phonebook) #prints out each entry in nice format
    phonebook.each {|key, value| 
        puts "-------------------------------------------"
        puts value[0]+" "+key.ljust(23) + value[1] #.ljust(23) creates a nice column effect
        puts value[2]
        puts value[3]}
        puts "-------------------------------------------"
end

def add(phonebook) #asks for all details and adds them into the phonebook
    puts "What is their last name? "
    last_name = gets.chomp.capitalize!
    puts "What is their first name? "
    first_name = gets.chomp.capitalize!
    puts "What is their phone number? "
    ph_num = gets.chomp
    puts "What is their occupation? "
    job = gets.chomp
    puts "What is their address? "
    address = gets.chomp
    puts "\nEntry added\n"
    return phonebook[last_name] = [first_name, ph_num, job, address] #send it back
end

def remove(phonebook)  #asks for last name and removes that entry
    want_remove = true
    while want_remove == true
        print "Which entry would you like removed? (type 'quit' to go back)\nPlease write their last name: "
        remove = gets.chomp.capitalize!
        if  remove.include?("Quit") #allows you to go back if you want
            want_remove = false
        elsif
            phonebook.has_key?(remove) == true
            puts phonebook[remove]
            puts "\nIs this the entry you would like to remove? (y/n) " #checks you want to remove it
            sure = gets.chomp.downcase
            if sure.include?("y")
                phonebook.delete(remove)
                puts "\nYour entry has been removed"
                want_remove = false
            elsif sure.include?("n")
                puts "Ok, let's try again "
            else
                puts "Invalid response"
            end
        else
            puts "\nThere is no one by that name in the phonebook\n\n"
        end

    end
return phonebook
end


while youre_here == true
    puts "\nWhat would you like to do?\nView the PhoneBook, add an entry or remove an entry?\nType 'view', 'add' or 'remove' to continue. Else write 'quit' "
    what_do = gets.chomp.downcase

    case what_do
    when "view"
        view(phonebook)
    when "add" #adds an entry to the phonebook
        add(phonebook) 
    when "remove"  #removes an entry from the phonebook
        remove(phonebook)
    when "quit" #quits program
        puts "Have a great day!\n"
        youre_here = false
    else
        puts "*** Invalid option. Try again *** \n\n"
    end
end
