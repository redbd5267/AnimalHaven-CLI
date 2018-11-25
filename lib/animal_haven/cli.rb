class AnimalHaven::CLI
  
  def call
    list_dogs
    menu
    goodbye
  end

  def list_dogs
    puts "Dogs Available for Adoption:"
    @dogs = AnimalHaven::Animal.today
    @dogs.each.with_index(1) do |dog, i|
      puts "#{i}. #{dog.name}"
    end
  end

  def menu
    input = nil
    while input != "exit"
      puts "Enter the number of the deal you'd like more info on or type list to see the deals again or type exit:"
      input = gets.strip.downcase

      if input.to_i > 0
        the_dog = @dogs[input.to_i-1]
        puts "#{the_dog.name} - #{the_dog.price} - #{the_dog.availability}"
      elsif input == "list"
        list_dogs
      else
        puts "Not sure what you want, type list or exit."
      end
    end
  end

  def goodbye
    puts "See you tomorrow for more deals!!!"
  end

end