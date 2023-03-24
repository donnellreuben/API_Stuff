# web request in Ruby
require 'http'

response = HTTP.get('https://data.cityofchicago.org/resource/xzkq-xp2w.json')
#  pp response.parse(:json)



all_salaries = []
index = 0
1000.times do |salaries|
  salaries = response.parse(:json)[index]["annual_salary"]
  index = index + 1
  if salaries.to_i > 120000 
    all_salaries << salaries
  end
  
end

pp all_salaries
p "There are #{all_salaries.count} people with salaries over $120k"
#128856 should be last line of code


