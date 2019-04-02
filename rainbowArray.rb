rainbow_arr = ["red","orange", "yellow", "green", "blue", "purple"]

puts "What is your favourite colour? "
fav_colour = gets.chomp
if rainbow_arr.include?(fav_colour)
    puts "Your favourite colour is in the rainbow"
else 
    puts "Your favourite colour is not in the rainbow"
end