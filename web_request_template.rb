# web request in Ruby
require 'http'

response = HTTP.get('#enter https link here')
pp response.parse(:json)