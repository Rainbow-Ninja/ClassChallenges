possible_choices = ["rock", "paper", "scissors"] 
wants_play = true

while wants_play
    puts "Let's play rock, paper, scissors!!\n"
    my_choice = " "
    until my_choice == "rock" || my_choice == "paper" || my_choice == "scissors"
        puts "Make you choice - rock, paper or scissors: "
        my_choice = gets.chomp.downcase
       
    #here I assign the choices values so they can be compared    
        if my_choice == "rock"
            position = 0
        elsif my_choice == "paper"
            position = 1
        elsif my_choice == "scissors" 
            position = 2
        else
            puts "You're choice is invalid. Try again"
        end
    end

    comp_choice = possible_choices.sample #computer making a random selection from array

    if position == 0 && comp_choice == "scissors"
        puts "You chose #{my_choice}, they chose #{comp_choice}. You Win! Congratulations!!"
    elsif position == 2 && comp_choice == "rock"
        puts "You chose #{my_choice}, they chose #{comp_choice}. You Lose"
    else
        case position <=> possible_choices.index(comp_choice) #compares my choice to computers choice
        when -1
            puts "You chose #{my_choice}, they chose #{comp_choice}. You Lose"
        when 0
            puts "You chose #{my_choice}, they chose #{comp_choice}. You Draw"
        else
            "You chose #{my_choice}, they chose #{comp_choice}. You Win! Congratulations!!"
        end
    end

    puts "\nDo you want to play again? (y/n)"
    play_again = gets.chomp.downcase
    if play_again == "y"
        wants_play = true
    else
        wants_play = false
    end
end
