# This program offers the user a list of items from a menu. The user chooses which category they would like to look at. The user is then asked for a max length of characters they want for items from that category. All items with that many chars or less are shown

keep_looking = true

data = {"chocolate things" => ["chocolate cake", "hot chocolate", "choc"], "liquids" => ["water", "hot chocolate", "cola", "juice"], "lollies" => ["skittles", "M&Ms", "licorice"]}

def check_if_valid(want, data)
    return data.has_key?(want)
end

puts "Good Day to you Good Sir!" 
while keep_looking == true
    counter = 0
    valid = false
    wants_more = true
    until valid do
        puts "What can I interest you in?"
        puts data.keys
        print "> "
        want = gets.chomp.downcase
        valid = check_if_valid(want, data)
        if valid ==false
             puts "\nSorry I didn't get that\n\n"
        end
    end
    
    puts "\n#{want.capitalize}! Excellent choice!\n\n"
    puts "What is the maximum length of characters you would like for your item? "
    char_leng = gets.chomp.to_i

    data[want].each {|menu_item| 
        if  menu_item.length <= char_leng
            puts "We have #{menu_item} for you"
            counter += 1
        end
    }
    if counter == 0
        puts "I'm sorry, we don't have anything to match your request\n\n"
    end
    while wants_more == true
        puts "Would you like to look at anything else? (y/n) "
        go_again = gets.chomp.downcase
        if go_again == "n"
            puts "Have a great day!\n\n"
            keep_looking = false
            wants_more = false
        elsif go_again == "y"
            valid = false
            wants_more = false
        else
            puts "\nInvalid response\n\n"
        end
    end
end