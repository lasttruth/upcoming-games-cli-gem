class UpcomingGames::Upcoming
  attr_accessor :name, :realease, :platforms, :genre, :availiability, :url
  def self.soon
    puts <<-DOC.gsub /^\s*/,''
    1 South Park: The Fractured But Whole - Oct 17 - PC PS4 XB1 - RPG - Pre order availiable

    2 Assassin's Creed Origins - Oct 27 - PC PS4 XB1 - Action-Adventure - Pre order availiable.
    DOC

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
end
