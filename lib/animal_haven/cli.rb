class AnimalHaven::CLI
  
  def call
    list_dogs
    menu
    goodbye
  end

  def list_dogs
    puts "Dogs Available for Adoption:"
    @dogs = AnimalHaven::Animal.today
    # @dogs.each.with_index(1) do |dog, i|
    #   puts "#{i}. #{dog.name} - #{dog.age} - #{dog.gender}"
    # end
  end

  def menu
    input = nil
    while input != "exit"
      puts " "
      puts "Enter the # of the dog you'd like more info on, or type list to see the dogs again or type exit:"
      input = gets.strip.downcase

      if input.to_i > 0
        the_dog = @dogs[input.to_i-1]
        puts "#{the_dog.name} - #{the_dog.age} - #{the_dog.gender}"
      elsif input == "list"
        list_dogs
      end
    end
  end

  def goodbye
    puts "(p)Awww! See you tomorrow for more adoptions!"
  end

end