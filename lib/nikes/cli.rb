#CLI controller - Responsible for business logic or client interaction

class TopNikes::CLI

  def menu
    puts "Welcome to Best Selling Nike's Online"
    puts "Select Gender (male/female) or type cancel to exit"
    input = nil
    while input != "exit"
    input = gets.strip.downcase
    case input
    when "male"
    @mens = TopNikes::Nikes.scrape_mens
    when "female"
    @womens = TopNikes::Nikes.scrape_womens
   when "cancel"
     puts ""
     puts ""
     abort("Canceled: Thanks for visiting. Don't forget, Just Do It.")
    else
      puts "Invalid selection type Male or Female"
      menu
    end
  end
end

end #ends class
