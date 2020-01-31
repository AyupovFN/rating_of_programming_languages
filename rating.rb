require 'json'

path = File.read('rating.json')

languages_list = JSON.parse(path)

puts languages_list