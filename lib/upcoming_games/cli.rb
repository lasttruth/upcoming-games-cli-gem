class UpcomingGames::CLI

  def call
    puts "Upcoming Videos Games:"
    list_games
    menu
    goodbye
  end


  def list_games
    puts <<-DOC.gsub /^\s*/,''
    1 South Park: The Fractured But Whole - oct 17 - PC PS4 XB1 - RPG - Pre order availiable

    2 Assassin's Creed Origins - oct 27 - PC PS4 XB1 - Action-Adventure - Pre order availiable.
    DOC
    @games = UpcomingGames::Upcoming.soon
  end

  def menu

    puts "Enter the number of the game you want more info on or type exit:"
    input = nil
    input = gets.strip
    while input != "exit"
      input = gets.strip.downcase
      case input
      when "1"
        puts "More info on deal 1..."
      when "2"
        puts "More info on deal 2..."
      when "list"
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
