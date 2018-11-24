class AnimalHaven::Event
  attr_accessor :name, :price, :availability, :url

  def self.today
    # Scrape woot and meh and then return deals based on that data
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
    # deal.price = doc.search("#todays-deal span.price").text.strip
    # deal.url = doc.search("a.wantone").first.attr("href").strip
    # deal.availability = true

    deal
  end

end