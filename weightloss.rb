 # calculate Resting metabolic weight
#men = 88.362 + (4.799 x height in cm) + (13.397 x weight in kg)- (5.677 X AGE)
#woman = 447.593 +(3.098 x height in cm) + (9.247 x weight in kg) - (4.33 x age)

#next mulitply this by activity factor. This is 1.2 for sedentary people, 1.375 in light activity, 1.55 for those who are modertaly active , very active is 1.9.

#then divide the number by weight in kilos to get number of calories to maintain weight.

#7700 CALORIES PER KILO OF FAT





puts "What is your height in cm?"
height = gets.chomp.to_i

puts "What is you current weight in kgs?"
weight = gets.chomp.to_i

puts "How old are you"
age = gets.chomp.to_i


puts "What is you activity level? 1:Sedentary 2:Light 3:Moderate 4:Heavy"
activity = gets.chomp
if activity == "1"
  work = 1.2
elsif activity == "2"
  work = 1.375
elsif activity == "3"
  work = 1.55
elsif activity =="4"
  work = 1.9
else
  puts "Please try again"
end

puts "Are You Male or Female?"
gender = gets.chomp.downcase
if gender == "male"
    cals = (88.362 + (4.799 * height) + (13.397 * weight) - (5.677 * age))
elsif gender == "female"
    cals = (447.593 + (3.098 * height) + (9.247 * weight ) - (4.33 * age))
else
  puts "please try again"
  user_input
end


rmr = cals * work
puts "Your Resting metabolic rate is #{rmr}. Consume less than this to lose weight. "


puts "How many calories have you eaten today?"
daycals = gets.chomp.to_i


  dayloss = rmr - daycals
  calskg = 1/7700.to_f
  weightloss = dayloss * calskg
  endweight = weight - weightloss
  week = weightloss * 7
  weekweight = weight - week
  month = weightloss * 31
  monthweight = weight - month


puts "You should be #{endweight.round(2)}kg by the end of today. If every day was like today you will be #{weekweight.round(2)}kg in one week and #{monthweight.round(2)}kg in one month."
