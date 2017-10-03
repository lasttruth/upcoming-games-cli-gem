class UpcomingGames::CLI

  def call
    puts "Upcoming Videos Games:"
    list_games
    menu
    goodbye
  end


  def list_games
    @games = UpcomingGames::Upcoming.soon
    @games.each.with_index(1) do |game, i|
      puts "#{i}. #{game.name} - #{game.realease} - #{game.platforms} - #{game.genre} - #{game.availiability}"
    end
  end

  def menu

    puts "Enter the number of the game you want more info on or type exit:"
    input = nil
    input = gets.strip
    while input != "exit"
      input = gets.strip.downcase
      if input.to_i > 0
        game_list = @games[input.to_i-1]
        puts "#{game.name} - #{game.realease} - #{game.platforms} - #{game.genre} - #{game.availiability}"
      elsif input == "list"
        list_games
      else
        puts "Not sure we have what you are looking for."
      end
    end
  end

  def goodbye
    puts "Check in later for more updates on upcoming games!!!"
  end

end
