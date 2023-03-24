# web request in Ruby
require 'http'

response = HTTP.get('https://data.cityofchicago.org/resource/xzkq-xp2w.json')
#  pp response.parse(:json)

puts "Please enter in a salary amount and I will show you all of the people who are making more than that amount as well as the number of people who are making more than that amount: "
user_input = gets.chomp 
all_salaries = []
index = 0
1000.times do |salaries|
  salaries = response.parse(:json)[index]["annual_salary"]
  index = index + 1
  if salaries.to_i > user_input.to_i 
    all_salaries << salaries
  end
  
end

pp all_salaries
p "There are #{all_salaries.count} people with salaries over #{user_input.to_i}"
#128856 should be last line of code


