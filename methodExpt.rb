phonebook = {"Bird" => ["Big", "95890676", "Best friend to Mr Snuffleupagus", "123 Sesame Street, Brownstone"], "Snuffleupagus" => ["Aloysius", "95282040", "Best friend to Big Bird", "Sesame Street, Brownstone"], "Grouch" => ["Oscar the", "95212342", "Local grouch", "'The Trash Can' Sesame Street, Brownstone"]}

def say_hi
    puts "say hi"
end

def add(phonebook)
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
    return phonebook[last_name] = [first_name, ph_num, job, address]
   # puts "Entry added\n" 
end

def view(phonebook)
    phonebook.each {|key, value| #prints out each entry in nice format
        puts "-------------------------------------------"
        puts value[0]+" "+key.ljust(23) + value[1] #.ljust(23) creates a nice column effect
        puts value[2]
        puts value[3]}
        puts "-------------------------------------------"
end

def remove(phonebook)  #need a go back option
    @want_remove = true
    while @want_remove == true
        print "Which entry would you like removed? \nPlease write their last name: "
        remove = gets.chomp.capitalize!
        if phonebook.has_key?(remove) == true
            puts phonebook[remove]
            puts "\nIs this the entry you would like to remove? (y/n) "
            sure = gets.chomp.downcase
            if sure.include?("y")
                phonebook.delete(remove)
                puts "\nYour entry has been removed"
                @want_remove = false
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



counter = 0

while counter < 3
    say_hi
    counter += 1
end

view(phonebook)
remove(phonebook)
add(phonebook)

#data[want].each {|menu_item| puts menu_item} #prints each item from wanted section
#(data was a hash with an array in it, want was the key name to access the array)