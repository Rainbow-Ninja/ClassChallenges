year = Time.now.strftime("%Y") #get what year it is
day = Time.new.yday #day of the year in integer form

if (year%4 == 0) #finds if it's a leap year
   leap = true
else
    leap = false
end

seasons = {"Start of Summer" => 1..59, "Autumn" => 60..151, "Winter" => 152..243, "Spring" => 244..334, "End of Summer" => 335..365}
Leap_yr_seasons = {"Start of Summer" => 1..60, "Autumn" => 61..152, "Winter" => 153..244, "Spring" => 245..335, "End of Summer" => 336..366}

puts seasons["Autumn"]

if leap
    if (seasons["Start of Summer"].include?(day) || seasons["Start of Summer"].include?(day))
        puts "It's Summer "
    elsif (day === seasons["Autumn"])
        puts "It's Autumn "
    elsif (day === seasons["Winter"])
        puts "It's Winter"
    else
        puts "It's Spring"
    end 
else
    if (day == Leap_yr_seasons["Start of Summer"] || day == Leap_yr_seasons["End of Summer"])
        puts "It's Summer "
    elsif (day == Leap_yr_seasons["Autumn"])
        puts "It's Autumn "
    elsif (day == Leap_yr_seasons["Winter"])
        puts "It's Winter"
    else
        puts "It's Spring"
    end 
end