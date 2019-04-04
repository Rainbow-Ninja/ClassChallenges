happy = false
words = ["correct", "horse", "battery", "staple", "turtle", "blue", "noisy", "hungry", "extra", "speedy", "coding", "website", "banana", "seal", "zebra", "flag"]
pw_options = words.permutation(4).to_a #find all the combinations of 4 elements in the array

while !happy
    do_you_like = true
    new_pw = pw_options.sample #pick one of those combos of words
    new_pw.map! do |x| x.capitalize #capitalise the first letter of each element chosen
    end
    joined_pw = new_pw.join #take each word and make it one long string
    random_number = format('%03d', rand(0..999)).to_s #generate a random 3digit number from 0-999 and make it a string
    final_password = joined_pw.concat(random_number) #put the rand num on the end of the password

    while do_you_like
        puts "Your password is #{final_password}. Are you happy with that? (y/n)"
        response = gets.chomp.downcase
        if response == "y" #program ends
            puts "Marvellous! Have a superb day!"
            happy = true
            do_you_like = false
        elsif response == "n" #generate a new password
            puts "\nLets try again\n"
            do_you_like = false
        else 
            puts "I didn't get that" #invalid response, ask again if they are happy
        end
    end
end