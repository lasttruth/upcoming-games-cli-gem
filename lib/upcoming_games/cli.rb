class UpcomingGames::CLI

  def call
    puts "Upcoming Videos Games:"
    list_games
    menu
    goodbye
  end


  def list_games
   @games = UpcomingGames::Upcoming.all
   @games.each.with_index(1) do |game, i|
     while i <= 20
       puts "#{i}. #{game[i]}"
       i += 1
     end
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
        puts "#{@games.name} - #{@games.realease} - #{@games.platforms} - #{@games.genre} - #{@games.availiability}"
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
