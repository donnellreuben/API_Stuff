# web request in Ruby
require 'http'



response = HTTP.get('https://data.ny.gov/resource/xjya-f8ng.json')
markets = response.parse(:json)

# show all the farmers markets near where I grew up
markets.each do |market|
  if market['phone'][] == user_input
    p "I AM NEAR SYRACUSE"
  end
  p "*" * 10 
end