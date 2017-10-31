class UpcomingGames::Upcoming
  attr_accessor :name, :release, :platforms, :genre, :summary, :url


  def self.all
    UpcomingGames::Scrapper.scrape_site
  end




end
