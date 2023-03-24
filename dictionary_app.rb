# web request in Ruby
require 'http'
response = HTTP.get('https://api.wordnik.com/v4/word.json/corn/definitions?limit=200&includeRelated=false&useCanonical=false&includeTags=false&api_key=22bf12vddbpizrmyfs90cf695e9j4u1seq52o4klisqmqn6v2')
# pp response.parse(:json)

puts "Please enter a word: "
user_input = gets.chomp
custom_response = HTTP.get("https://api.wordnik.com/v4/word.json/#{user_input}/definitions?limit=200&includeRelated=false&useCanonical=false&includeTags=false&api_key=22bf12vddbpizrmyfs90cf695e9j4u1seq52o4klisqmqn6v2")

defintion = custom_response.parse(:json)[4]["text"]
p defintion
















