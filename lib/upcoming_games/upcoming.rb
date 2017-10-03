class UpcomingGames::Upcoming
  attr_accessor :name, :realease, :platforms, :genre, :availiability, :url

  def self.soon
    # puts <<-DOC.gsub /^\s*/,''
    # 1 South Park: The Fractured But Whole - Oct 17 - PC PS4 XB1 - RPG - Pre order availiable

    # 2 Assassin's Creed Origins - Oct 27 - PC PS4 XB1 - Action-Adventure - Pre order availiable.
    # DOC

    game_1 = self.new
    game_1.name = "South Park: The Fractured But Whole"
    game_1.realease = "Oct 17"
    game_1.platforms = "PC PS4 XB1"
    game_1.genre = "RPG"
    game_1.availiability = true
    game_1.url = "https://www.amazon.com/gp/product/B00ZJBSCJQ/ref=as_li_tf_tl?ie=UTF8&camp=1789&creative=9325&creativeASIN=B00ZJBSCJQ&linkCode=as2&tag=metacritic04-20"

    game_2 = self.new
    game_2.name = "Assassin's Creed Origins"
    game_2.realease = "Oct 27"
    game_2.platforms = "PC PS4 XB1"
    game_2.genre = "Action-Adventure"
    game_2.availiability = true
    game_2.url = "https://www.amazon.com/gp/product/B071WB8ZZ3/ref=as_li_tf_tl?ie=UTF8&camp=1789&creative=9325&creativeASIN=B071WB8ZZ3&linkCode=as2&tag=metacritic04-20&th=1"

    [game_1, game_2]
  end

  def self.scrape_games
    games = [] #An empty array that will store the info for the upcoming game realeases

    games << self.scrape_metacritic
    # go to (insert website that host info of upcoming games)
    # extract the necessary info
    # omstamtoate a game

    # maybe add more options for user to access

    games #call the array
  end
  def self.scrape_metacritic
    doc = Nokogiri::HTML(open("http://www.ign.com/upcoming/games"))
    #title = doc.search("div.item-title h3 a").first.text
    doc.search('div.item-title h3 a', 'div.releaseDate', 'p.item-details span.item-genre').each do |name, date, genre|
      title =name.text
      puts title
    end
    binding.pry
  end
end
