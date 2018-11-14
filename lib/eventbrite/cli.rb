class Eventbrite::CLI
  
  def call
    list_events
    menu
    goodbye
  end
  
  def list_events
    puts "Events in New York Today:"
    puts <<-DOC.gsub /^\s*/, ''
      1. Event 1
      2. Event 2
    DOC
  end
  
  def menu
    puts "Enter the number of the event you'd like more info on, or type exit:"
    input = nil
    while input != "exit"
      input = gets.strip.downcase
      case input
      when "1"
        puts "more info on event 1"
      when "2" 
        puts "more info on event 2"
      end
    end
  end
  
  def goodbye 
    puts "see u tm for tms events"
  end
  
end