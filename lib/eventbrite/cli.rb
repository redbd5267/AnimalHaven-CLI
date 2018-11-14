class Eventbrite::CLI
  
  def call
    list_events
    menu
    goodbye
  end
  
  def list_events
    puts "Events in New York Today:"
    @events = Eventbrite::Event.today
    @events.each.with_index(1) do |event, i|
      puts "#{i}. #{event.title} - #{event.time} - #{event.location}"
    end
  end
  
  def menu
    input = nil
    while input != "exit"
      puts "Enter the number of the event you'd like more info on, or type list to see the full list of events, or type exit:"
      input = gets.strip.downcase
      
      if input.to_i > 0
        puts @events[input.to_i - 1]
      elsif input == "list"
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