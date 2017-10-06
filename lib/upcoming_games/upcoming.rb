class UpcomingGames::Upcoming
  attr_accessor :name, :release, :platforms, :genre,


  def self.all
    # puts <<-DOC.gsub /^\s*/,''
    # 1 South Park: The Fractured But Whole - Oct 17 - PC PS4 XB1 - RPG - Pre order availiable

    # 2 Assassin's Creed Origins - Oct 27 - PC PS4 XB1 - Action-Adventure - Pre order availiable.
    # DOC

    #game_1 = self.new
    #game_1.name = "South Park: The Fractured But Whole"
    #game_1.release = "Oct 17"
    #game_1.platforms = "PC PS4 XB1"
    #game_1.genre = "RPG"
    #game_1.availiability = true
    #game_1.url = "https://www.amazon.com/gp/product/B00ZJBSCJQ/ref=as_li_tf_tl?ie=UTF8&camp=1789&creative=9325&creativeASIN=B00ZJBSCJQ&linkCode=as2&tag=metacritic04-20"

    #game_2 = self.new
    #game_2.name = "Assassin's Creed Origins"
    #game_2.release = "Oct 27"
    #game_2.platforms = "PC PS4 XB1"
    #game_2.genre = "Action-Adventure"
    #game_2.availiability = true
    #game_2.url = "https://www.amazon.com/gp/product/B071WB8ZZ3/ref=as_li_tf_tl?ie=UTF8&camp=1789&creative=9325&creativeASIN=B071WB8ZZ3&linkCode=as2&tag=metacritic04-20&th=1"


    @@all ||= self.scrape_games
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

  private
  def self.scrape_metacritic

    doc = Nokogiri::HTML(open("http://www.ign.com/upcoming/games"))
    #title = doc.search("div.item-title h3 a").first.text
    #name = doc.search("h3, div[class ='releaseDate grid_3 omega'], span[class ='item-platform'], span[class ='item-genre']")
    names = doc.search("h3 a")
    titles = names.collect { |e| e.text.strip }
    titles

  end
end
