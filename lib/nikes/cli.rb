#CLI controller - Responsible for business logic or client interaction

class TopNikes::CLI

  def mensmenu
    clear
    puts ""
    puts ""
    puts "Nike Mens Footwear:: Select from the following"
    puts "Lifestyle | Basketball | Running | All | Cancel"
    mcat = gets.strip.downcase
      if mcat == "lifestyle"
        puts ""
      puts "Mens Best Selling LIFESTYLE Nike Selection as of Today - Nike.com"
        TopNikes::Nikes.scrape_mens_lifestyle
        display
        puts ""
        mensmenu
      elsif mcat == "basketball"
        puts ""
        puts "Mens Best Selling BASKETBALL Nike Selection as of Today - Nike.com"
        TopNikes::Nikes.scrape_mens_basketball
        display
        puts ""
        mensmenu
      elsif mcat == "running"
        puts ""
        puts "Mens Best Selling RUNNING Nike Selection as of Today - Nike.com"
        TopNikes::Nikes.scrape_mens_running
        display
        puts ""
        mensmenu
      elsif mcat == "all"
        puts ""
        puts "Mens Best Selling Nike Selection as of Today - Nike.com"
        TopNikes::Nikes.scrape_mens_all
        display
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

  def display
    TopNikes::Nikes.all.each do |i|
      puts "Item: #{i.name}"
      puts "Price: #{i.price}"
    end
  end

  def clear
    TopNikes::Nikes.all.clear
  end

  def womensmenu
    clear
    puts ""
    puts ""
    puts "Nike Womens Footwear:: Select from the following"
    puts "Lifestyle | Basketball | Running | All | Cancel"
    wcat = gets.strip.downcase
      if wcat == "lifestyle"
        puts ""
        puts "Womens Best Selling LIFESTYLE Nike Selection as of Today - Nike.com"
      TopNikes::Nikes.scrape_womens_lifestyle
        display
        puts ""
        womensmenu
      elsif wcat == "basketball"
        puts ""
      puts "Womens Best Selling BASKETBALL Nike Selection as of Today - Nike.com"
      TopNikes::Nikes.scrape_womens_basketball
        display
        puts ""
        womensmenu
      elsif wcat == "running"
        puts ""
      puts "Womens Best Selling RUNNING Nike Selection as of Today - Nike.com"
      TopNikes::Nikes.scrape_womens_running
        display
        puts ""
        womensmenu
      elsif wcat == "all"
        puts ""
        puts "Womens Best Selling Nike Selection as of Today - Nike.com"
        TopNikes::Nikes.scrape_womens_all
        display
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
