class AnimalHaven::Animal
  attr_accessor :name, :age, :gender

  def self.today
    self.scrape_animalHaven
  end

  def self.scrape_animalHaven
    dogs = []
    dogs << self.scrape_dogs
    dogs
  end

  def self.scrape_dogs
    doc = Nokogiri::HTML(open("https://www.animalhavenshelter.org/adopt/dogs/"))
    
    dog = self.new
    dog.name = doc.search("div.box-info h4").text.strip
    dog
  end

end