class Eventbrite::Event
  
  attr_accessor :name, :title, :location, :price
  
  def self.today
    puts <<-DOC.gsub /^\s*/, ''
      1. Event 1
      2. Event 2
    DOC
    event_1 = event.new 
    event_1.name = "Event 1"
    event_1.time = "6PM"
    event_1.location = "Home"
    event_1.price = "$100"
    
    event_2 = event.new 
    event_2.name = "Event 2"
    event_2.time = "12PM"
    event_2.location = "work"
    event_2.price = "$50"
    
    [event_1, event_2]
  end

end