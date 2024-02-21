require "nokogiri"
require "open-uri"
require_relative 'recipe'

#class Parsing

  #def initialize(ingredient)
  #  @ingredient = ingredient
  #end

#file = "strawberry.html"
#doc = Nokogiri::HTML.parse(File.open(file), nil, "utf-8")
  #def search_recepies(ingredient)
  #  url = "https://www.allrecipes.com/search?q=#{ingredient}"   # the url of the web page you want to scrape
  #  html = URI.open(url)                                        # open the html of the page
  #  doc = Nokogiri::HTML.parse(html)                            # create a nokogiri doc based on that html
  #  puts doc
  #end
    # Up to you to find the relevant CSS query.
#end

file = "strawberry.html"
doc = Nokogiri::HTML(File.open(file), nil, "utf-8")


arr = []
doc.search('.card__content').first(5).each do |element|
  title = element.search('.card__title-text').text.strip
  description = element["data-tag"]
  arr << Recipe.new(title, description)
end

puts "qui - #{arr}"
