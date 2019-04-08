date = Time.now.strftime("%j") # gets day of year 3digits
print date

months_normal = {Jan: 31, Feb: 28, Mar: 31, Apr: 30, May: 31, Jun: 30, Jul: 31, Aug: 31, Sep: 30, Oct: 31, Nov: 30, Dec:31}
months_leap = {Jan: 31, Feb: 29, Mar: 31, Apr: 30, May: 31, Jun: 30, Jul: 31, Aug: 31, Sep: 30, Oct: 31, Nov: 30, Dec:31}

seasons = {Summer: [12, 1, 2], Autumn: [3, 4, 5], Winter:[6, 7, 8], Spring:[9, 10, 11]}
#puts leap = Date.leap?("%Y") #is the year a leap year?
# puts leap = 
puts leap = (Time.now.strftime("%Y"))%4==0