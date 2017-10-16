class UpcomingGames::CLI

  def call
    list_games
    menu
  end


  def list_games
    puts "Upcoming Videos Games:"
    @upcoming_list = UpcomingGames::Upcoming.all

    @upcoming_list.each.with_index(1) do |game, i|
      puts "#{i}. #{game.name}"
    end

    @upcoming_list

    puts "Enter the number of the game you want more info on or type exit:"
  end


  def menu


    input = nil
    input = gets.strip

    while input != "exit"
      input = gets.strip.downcase

      if input.to_i > 0
        game_list = @upcoming_list[input.to_i-1]
        puts "#{game_list.name} - #{game_list.platforms} - #{game_list.genre} - #{game_list.release}"
        puts ""
        puts "#{game_list.summary}"
        puts ""
        puts "Find more info at..."
        puts "#{game_list.url}"
      elsif input == "list"
        list_games
      elsif input == "exit"
        goodbye
      else
        puts "Not sure we have what you are looking for."
      end

    end

  end

  def goodbye

    puts "Check in later for more updates on upcoming games!!!"

  end

end
