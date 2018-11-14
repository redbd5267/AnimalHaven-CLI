class Eventbrite::Event
  
  def self.today
    puts <<-DOC.gsub /^\s*/, ''
      1. Event 1
      2. Event 2
    DOC
  end

end