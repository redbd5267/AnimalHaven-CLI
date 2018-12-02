class AnimalHaven::Animal
  attr_accessor :name, :age, :gender

  def self.today
    self.scrape_animalHaven
    # self.scrape_hrefs
  end

  def self.scrape_animalHaven
    dogs = []
    dogs << self.scrape_dogs
    dogs
  end

  def self.scrape_dogs
    doc = Nokogiri::HTML(open("https://www.animalhavenshelter.org/adopt/dogs/"))
    
    dog = self.new
    doc.search("div.box-info h4").each.with_index(1) do |eachDog, i|
      puts "#{i} #{eachDog.text}"
    end
    dog
  end
  
  # def self.scrape_hrefs
  #   binding.pry
  # end

end