require 'json'

path = File.read('rating.json')
languages_list = JSON.parse(path)

sort_list = languages_list.sort_by { |key, value| - value }

popular_languages = sort_list[0]
puts "Самый популярный язык: #{popular_languages[0]} (#{popular_languages[1]})"

number_string = 0
sort_list.each do |languages, score|
  number_string +=1
  puts "#{number_string}: #{languages} (#{score})"
end

