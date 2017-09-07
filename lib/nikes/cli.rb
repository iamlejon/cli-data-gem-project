#CLI controller - Responsible for business logic or client interaction

class TopNikes::CLI

  def mensmenu
    puts ""
    puts ""
    puts "Nike Mens Footwear:: Select from the following"
    puts "Lifestyle | Basketball | Running | All | Cancel"
    mcat = gets.strip.downcase
      if mcat == "lifestyle"
        puts ""
        puts ""
        @mlifestyle = TopNikes::Nikes.scrape_mens_lifestyle
        puts ""
        mensmenu
      elsif mcat == "basketball"
        puts ""
        puts ""
        @mbasketball = TopNikes::Nikes.scrape_mens_basketball
        puts ""
        mensmenu
      elsif mcat == "running"
        puts ""
        puts ""
        @mrunning = TopNikes::Nikes.scrape_mens_running
        puts ""
        mensmenu
      elsif mcat == "all"
        puts ""
        puts ""
        @allmens = TopNikes::Nikes.scrape_mens_all
        puts ""
        mensmenu
      elsif mcat == "cancel"
        puts ""
        puts "Returning to main Home menu"
        menu
      else
        puts ""
        puts "Sorry! Option not found, please select from menu"
        mensmenu
      end
  end

  def womensmenu
    puts ""
    puts ""
    puts "Nike Womens Footwear:: Select from the following"
    puts "Lifestyle | Basketball | Running | All | Cancel"
    wcat = gets.strip.downcase
      if wcat == "lifestyle"
        puts ""
        puts ""
        @wlifestyle = TopNikes::Nikes.scrape_womens_lifestyle
        puts ""
        womensmenu
      elsif wcat == "basketball"
        puts ""
        puts ""
        @wbasketball = TopNikes::Nikes.scrape_womens_basketball
        puts ""
        womensmenu
      elsif wcat == "running"
        puts ""
        puts ""
        @wrunning = TopNikes::Nikes.scrape_womens_running
        puts ""
        womensmenu
      elsif wcat == "all"
        puts ""
        puts ""
        @allwomens = TopNikes::Nikes.scrape_womens_all
        puts ""
        womensmenu
      elsif wcat == "cancel"
        puts ""
        puts "Returning to main Home menu"
        menu
      else
        puts ""
        puts "Sorry! Option not found, please select from menu"
        womensmenu
      end
  end

  def menu
    puts "Welcome to Best Selling Nike's Online"
    puts "Select Gender (men/women) or type cancel to exit"
    input = nil
    while input != "exit"
    input = gets.strip.downcase
    case input
    when "men"
      mensmenu
    when "women"
      womensmenu
   when "cancel"
     puts ""
     puts ""
     abort("Canceled: Thanks for visiting. Don't forget, Just Do It.")
    else
      puts "Invalid selection type Men or Women"
      menu
    end
  end
end

end #ends class
