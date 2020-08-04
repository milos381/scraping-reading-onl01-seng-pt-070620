require 'nokogiri'
require 'open-uri'

# html = open("https://flatironschool.com/")
# doc = Nokogiri::HTML(html)
# puts doc

doc = Nokogiri::HTML(open("https://flatironschool.com/"))
puts doc.css(".headline-26OIBN").text.strip
courses = doc.css(".gridContainer-EnvccM.inlineMobileLeft-2Yo002.imageTextBlockGrid2-3jXtmC")

courses.each do |course|
  puts course.text.strip
end
