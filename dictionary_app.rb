# web request in Ruby
require 'http'
response = HTTP.get('https://api.wordnik.com/v4/word.json/corn/definitions?limit=200&includeRelated=false&useCanonical=false&includeTags=false&api_key=22bf12vddbpizrmyfs90cf695e9j4u1seq52o4klisqmqn6v2')
# pp response.parse(:json)

puts "Please enter a word: "
user_input = gets.chomp
custom_response = HTTP.get("https://api.wordnik.com/v4/word.json/#{user_input}/definitions?limit=200&includeRelated=false&useCanonical=false&includeTags=false&api_key=")

index = 0
defintion = custom_response.parse(:json)[index]["text"]
defintion2 = custom_response.parse(:json)[index + 2]["text"]
# example = custom_response.parse(:json)[1]["exampleUses"][0]["text"]

if defintion == nil
  defintion = custom_response.parse(:json)[index + 1]["text"]
  puts ""
  puts "#{user_input.upcase}: "
  puts "#{defintion}."

elsif defintion == nil
  defintion = custom_response.parse(:json)[index + 1]["text"]
  puts ""
  puts "#{user_input.upcase}: "
  puts "#{defintion}."

else
  puts ""
  puts "#{user_input.upcase}: "
  puts "#{defintion}."
end



#error on word bear
#Might give errors due to limit 













