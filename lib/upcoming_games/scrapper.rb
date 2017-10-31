require 'pry'
class UpcomingGames::Scrapper

  def self.scrape_site

    doc = Nokogiri::HTML(open("http://www.ign.com/upcoming/games"))

    doc.css(".itemList-item").collect do |info|
      game = UpcomingGames::Upcoming.new
      #binding.pry
      game.name = info.css('h3 a').text.strip
      game.release = info.css('.releaseDate').text
      game.genre = info.css('.item-genre').text.strip
      game.platforms = info.css('.item-platform').text
      game.url = "http://www.ign.com"+info.css('a').attr('href').value
      game.summary = info.css('.item-details').text.split(" - ")[1]
      #binding.pry

      game
    end

  end

end
