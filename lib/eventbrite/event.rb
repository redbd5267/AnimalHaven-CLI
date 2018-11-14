class Eventbrite::Event
  
  attr_accessor :title, :time, :location, :price
  
  def self.today
    self.scrape_events
  end
  
  def self.scrape_events
    events = []
    
    events << self.scrape_eventbrite
    
    event_1 = self.new 
    event_1.title = "Event 1"
    event_1.time = "6PM"
    event_1.location = "Home"
    event_1.price = "$100"
    
    event_2 = self.new 
    event_2.title = "Event 2"
    event_2.time = "12PM"
    event_2.location = "work"
    event_2.price = "$50"
    
    events
  end
  
  def self.scrape_eventbrite
    doc = Nokogiri::HTML(open("https://www.eventbrite.com/d/ny--new-york/events--today/"))
    binding.pry
  end
end