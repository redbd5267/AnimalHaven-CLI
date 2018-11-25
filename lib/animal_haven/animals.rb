class AnimalHaven::Animal
  attr_accessor :name

  def self.today
    self.scrape_deals
  end

  def self.scrape_deals
    deals = []
    deals << self.scrape_woot
    deals
  end

  def self.scrape_woot
    doc = Nokogiri::HTML(open("https://www.animalhavenshelter.org/adopt/dogs/"))
    deal = self.new
    deal.name = doc.search("div.box-info h4").text.strip
    deal
  end

end