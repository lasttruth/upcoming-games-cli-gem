class UpcomingGames::Upcoming
  attr_accessor :name, :release, :platforms, :genre, :summary, :url


  def self.all
    self.scrape_site
  end


  def self.scrape_games
    games_list = [] #An empty array that will store the info for the upcoming game realeases

    games_list << self.scrape_metacritic
    # go to (insert website that host info of upcoming games)
    # extract the necessary info

    # maybe add more options for user to access

    games_list #call the array
  end


  def self.scrape_site

    doc = Nokogiri::HTML(open("http://www.ign.com/upcoming/games"))

    doc.css(".itemList-item").collect do |info|
      game = self.new
      game.name = info.css('h3 a').text.strip
      game.release = info.css('.releaseDate').text
      game.genre = info.css('.item-genre').text.strip
      game.platforms = info.css('.item-platform').text
      game.url = "http://www.ign.com"+info.css('a').attr('href').value
      game.summary = info.css('.item-details').text.strip
      #binding.pry

      game
    end

  end


end
