require 'nokogiri'
require 'open-uri'

class TopNikes::Nikes
attr_accessor :name, :price


def self.scrape_mens
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

    def self.scrape_womens
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

end
