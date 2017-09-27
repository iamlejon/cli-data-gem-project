require 'nokogiri'
require 'open-uri'
require 'pry'

class TopNikes::Nikes
attr_accessor :name, :price

@@all = []
#===========================================================================================#
#MENS MENU OPTIONS::INCLUDES BEST SELLING ITEMS FOR LIFESTYLE, BASKETBALL, AND RUNNING shoes#
#===========================================================================================#

  def initialize
    @@all << self
  end

  def self.all
    @@all
  end

  def self.clear_all
    @@all.clear
  end

def self.scrape_mens_all
    doc = Nokogiri::HTML(open("https://store.nike.com/us/en_us/pw/mens-best-shoes/7puZr3nZpi1Zoi3"))
    doc.css(".grid-item-box").each do |item|
      item_name = item.css('.product-display-name').text.strip
      item_price = item.css('.prices').text.strip
      nike = TopNikes::Nikes.new
      nike.name = item_name
      nike.price = item_price
    end
    end

    def self.scrape_mens_lifestyle
        #setup to open the URL
        doc = Nokogiri::HTML(open("https://store.nike.com/us/en_us/pw/mens-best-lifestyle-shoes/7puZr3nZoneZpi1Zoi3"))
        doc.css(".grid-item-box").each do |item|
          item_name = item.css('.product-display-name').text.strip
          item_price = item.css('.prices').text.strip
          nike = TopNikes::Nikes.new
          nike.name = item_name
          nike.price = item_price
        end
    end

        def self.scrape_mens_soccer
            #setup to open the URL
            doc = Nokogiri::HTML(open("https://store.nike.com/us/en_us/pw/mens-best-soccer-shoes/7puZr3nZ896Zpi1Zoi3"))
            doc.css(".grid-item-box").each do |item|
              item_name = item.css('.product-display-name').text.strip
              item_price = item.css('.prices').text.strip
              nike = TopNikes::Nikes.new
              nike.name = item_name
              nike.price = item_price
            end
            end

            def self.scrape_mens_running
                #setup to open the URL
                doc = Nokogiri::HTML(open("https://store.nike.com/us/en_us/pw/mens-best-running-shoes/7puZr3nZ8yzZpi1Zoi3"))
                doc.css(".grid-item-box").each do |item|
                  item_name = item.css('.product-display-name').text.strip
                  item_price = item.css('.prices').text.strip
                  nike = TopNikes::Nikes.new
                  nike.name = item_name
                  nike.price = item_price
                end
                end
#=============================================================================================#
#WOMENS MENU OPTIONS::INCLUDES BEST SELLING ITEMS FOR LIFESTYLE, BASKETBALL, AND RUNNING shoes#
#=============================================================================================#
    def self.scrape_womens_all
      puts ""
      puts ""
        #setup to open the URL
        doc = Nokogiri::HTML(open("https://store.nike.com/us/en_us/pw/womens-best/7ptZr3nZpi1"))
        doc.css(".grid-item-box").each do |item|
          item_name = item.css('.product-display-name').text.strip
          item_price = item.css('.prices').text.strip
          nike = TopNikes::Nikes.new
          nike.name = item_name
          nike.price = item_price
        end
        end

        def self.scrape_womens_lifestyle
          puts ""
          puts ""
            #setup to open the URL
            doc = Nokogiri::HTML(open("https://store.nike.com/us/en_us/pw/womens-best-lifestyle-shoes/7ptZr3nZoneZpi1Zoi3"))
            doc.css(".grid-item-box").each do |item|
              item_name = item.css('.product-display-name').text.strip
              item_price = item.css('.prices').text.strip
              nike = TopNikes::Nikes.new
              nike.name = item_name
              nike.price = item_price
            end
            end

            def self.scrape_womens_basketball
              puts ""
              puts ""
                #setup to open the URL
                doc = Nokogiri::HTML(open("https://store.nike.com/us/en_us/pw/womens-best-basketball-shoes/7ptZr3nZ8r1Zpi1Zoi3"))
                doc.css(".grid-item-box").each do |item|
                  item_name = item.css('.product-display-name').text.strip
                  item_price = item.css('.prices').text.strip
                  nike = TopNikes::Nikes.new
                  nike.name = item_name
                  nike.price = item_price
                end
                end

                def self.scrape_womens_running
                  puts ""
                  puts ""
                    #setup to open the URL
                    doc = Nokogiri::HTML(open("https://store.nike.com/us/en_us/pw/womens-best-running-shoes/7ptZr3nZ8yzZpi1Zoi3"))
                    doc.css(".grid-item-box").each do |item|
                      item_name = item.css('.product-display-name').text.strip
                      item_price = item.css('.prices').text.strip
                      nike = TopNikes::Nikes.new
                      nike.name = item_name
                      nike.price = item_price
                    end
                    end

                  def self.expensive_shoes
                    @@all.select { |shoe|shoe.price[1..-1].to_i > 100 }
                  end
end #ends the class
