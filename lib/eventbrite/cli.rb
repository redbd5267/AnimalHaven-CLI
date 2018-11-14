class Eventbrite::CLI
  
  def call
    list_events
    menu
    goodbye
  end
  
  def list_events
    puts "Events in New York Today:"
    @events = Eventbrite::Event.today
  end
  
  def menu
    input = nil
    while input != "exit"
      puts "Enter the number of the event you'd like more info on, or type list to see the list of events, or type exit:"
      input = gets.strip.downcase
      case input
      when "1"
        puts "more info on event 1"
      when "2" 
        puts "more info on event 2"
      when "list"
        list_events
      else 
        puts "Not sure, pick again from the list below"
        list_events
      end
    end
  end
  
  def goodbye 
    puts "see u tm for tms events"
  end
  
end