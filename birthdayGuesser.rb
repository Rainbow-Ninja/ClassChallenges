months = ["January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December"]
days31 = Array.new(31)
days30 = Array.new(30)
days29 = Array.new(29)
days31.fill{|i| i+1}
days30.fill{|i| i+1}
days29.fill{|i| i+1}
month_answer = "n"
month_left = []
days_left = []
day_answer = "n"

puts "I'm going to guess your birthday!\n"

#this while loop guesses you bday month and stores it in bday_month
while month_answer == "n"
    generated_guess = months.sample
    puts "Is your birthday in #{generated_guess} (y/n) ? " 
    month_answer = gets.chomp.downcase
     if month_answer =="y"
        bday_month = generated_guess
        puts bday_month
    end
    months_left = months.delete(generated_guess)
end

#will run this if for the 30day months
if bday_month == "April" || bday_month == "June" || bday_month == "September" || bday_month == "November"
    while day_answer == "n"
        generated_guess = days30.sample
        puts "Is your birthday on the #{generated_guess} (y/n) ? " 
        day_answer = gets.chomp.downcase
         if day_answer =="y"
            bday_day = generated_guess
            puts bday_day
        end
        days_left = days30.delete(generated_guess)
    end

#will run this part if Feb    
elsif bday_month == "February"
    while day_answer == "n"
        generated_guess = days29.sample
        puts "Is your birthday on the #{generated_guess} (y/n) ? " 
        day_answer = gets.chomp.downcase
         if day_answer =="y"
            bday_day = generated_guess
            puts bday_day
        end
        days_left = days29.delete(generated_guess)
    end 

#will run this if for the 31day months
else
    while day_answer == "n"
        generated_guess = days31.sample
        puts "Is your birthday on the #{generated_guess} (y/n) ? " 
        day_answer = gets.chomp.downcase
         if day_answer =="y"
            bday_day = generated_guess
            puts bday_day
        end
        days_left = days31.delete(generated_guess)
    end 
end

puts "Your birthday is #{bday_month} #{bday_day}"
