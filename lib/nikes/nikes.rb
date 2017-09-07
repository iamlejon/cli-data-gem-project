require 'nokogiri'
require 'open-uri'

class TopNikes::Nikes
attr_accessor :name, :price
#===========================================================================================#
#MENS MENU OPTIONS::INCLUDES BEST SELLING ITEMS FOR LIFESTYLE, BASKETBALL, AND RUNNING shoes#
#===========================================================================================#
def self.scrape_mens_all
  puts ""
  puts ""
  puts "Mens Best Selling Nike Selection as of Today - Nike.com"
    #setup to open the URL
    doc = Nokogiri::HTML(open("https://store.nike.com/us/en_us/pw/mens-best-shoes/7puZr3nZpi1Zoi3"))
    shoes = []
    doc.css(".grid-item-box").each do |item|
      item_name = item.css('.product-display-name').text.strip
      item_price = item.css('.prices').text.strip
      puts "Item: #{item_name}"
      puts "Price: #{item_price}"
      puts "---------------------"
    end
    end

    def self.scrape_mens_lifestyle
      puts ""
      puts ""
      puts "Mens Best Selling LIFESTYLE Nike Selection as of Today - Nike.com"
        #setup to open the URL
        doc = Nokogiri::HTML(open("https://store.nike.com/us/en_us/pw/mens-best-lifestyle-shoes/7puZr3nZoneZpi1Zoi3"))
        shoes = []
        doc.css(".grid-item-box").each do |item|
          item_name = item.css('.product-display-name').text.strip
          item_price = item.css('.prices').text.strip
          puts "Item: #{item_name}"
          puts "Price: #{item_price}"
          puts "---------------------"
        end
        end

        def self.scrape_mens_basketball
          puts ""
          puts ""
          puts "Mens Best Selling BASKETBALL Nike Selection as of Today - Nike.com"
            #setup to open the URL
            doc = Nokogiri::HTML(open("https://store.nike.com/us/en_us/pw/mens-best-basketball-shoes/7puZr3nZ8r1Zpi1Zoi3"))
            shoes = []
            doc.css(".grid-item-box").each do |item|
              item_name = item.css('.product-display-name').text.strip
              item_price = item.css('.prices').text.strip
              puts "Item: #{item_name}"
              puts "Price: #{item_price}"
              puts "---------------------"
            end
            end

            def self.scrape_mens_running
              puts ""
              puts ""
              puts "Mens Best Selling RUNNING Nike Selection as of Today - Nike.com"
                #setup to open the URL
                doc = Nokogiri::HTML(open("https://store.nike.com/us/en_us/pw/mens-best-running-shoes/7puZr3nZ8yzZpi1Zoi3"))
                shoes = []
                doc.css(".grid-item-box").each do |item|
                  item_name = item.css('.product-display-name').text.strip
                  item_price = item.css('.prices').text.strip
                  puts "Item: #{item_name}"
                  puts "Price: #{item_price}"
                  puts "---------------------"
                end
                end
#=============================================================================================#
#WOMENS MENU OPTIONS::INCLUDES BEST SELLING ITEMS FOR LIFESTYLE, BASKETBALL, AND RUNNING shoes#
#=============================================================================================#
    def self.scrape_womens_all
      puts ""
      puts ""
      puts "Womens Best Selling Nike Selection as of Today - Nike.com"
        #setup to open the URL
        doc = Nokogiri::HTML(open("https://store.nike.com/us/en_us/pw/womens-best/7ptZr3nZpi1"))
        shoes = []
        doc.css(".grid-item-box").each do |item|
          item_name = item.css('.product-display-name').text.strip
          item_price = item.css('.prices').text.strip
          puts "Item: #{item_name}"
          puts "Price: #{item_price}"
          puts "---------------------"
        end
        end

        def self.scrape_womens_lifestyle
          puts ""
          puts ""
          puts "Womens Best Selling LIFESTYLE Nike Selection as of Today - Nike.com"
            #setup to open the URL
            doc = Nokogiri::HTML(open("https://store.nike.com/us/en_us/pw/womens-best-lifestyle-shoes/7ptZr3nZoneZpi1Zoi3"))
            shoes = []
            doc.css(".grid-item-box").each do |item|
              item_name = item.css('.product-display-name').text.strip
              item_price = item.css('.prices').text.strip
              puts "Item: #{item_name}"
              puts "Price: #{item_price}"
              puts "---------------------"
            end
            end

            def self.scrape_womens_basketball
              puts ""
              puts ""
              puts "Womens Best Selling BASKETBALL Nike Selection as of Today - Nike.com"
                #setup to open the URL
                doc = Nokogiri::HTML(open("https://store.nike.com/us/en_us/pw/womens-best-basketball-shoes/7ptZr3nZ8r1Zpi1Zoi3"))
                shoes = []
                doc.css(".grid-item-box").each do |item|
                  item_name = item.css('.product-display-name').text.strip
                  item_price = item.css('.prices').text.strip
                  puts "Item: #{item_name}"
                  puts "Price: #{item_price}"
                  puts "---------------------"
                end
                end

                def self.scrape_womens_running
                  puts ""
                  puts ""
                  puts "Womens Best Selling RUNNING Nike Selection as of Today - Nike.com"
                    #setup to open the URL
                    doc = Nokogiri::HTML(open("https://store.nike.com/us/en_us/pw/womens-best-running-shoes/7ptZr3nZ8yzZpi1Zoi3"))
                    shoes = []
                    doc.css(".grid-item-box").each do |item|
                      item_name = item.css('.product-display-name').text.strip
                      item_price = item.css('.prices').text.strip
                      puts "Item: #{item_name}"
                      puts "Price: #{item_price}"
                      puts "---------------------"
                    end
                    end

end #ends the class
