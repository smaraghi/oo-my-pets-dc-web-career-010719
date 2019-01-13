class Owner
  
  attr_reader :species
  attr_accessor :name, :pets

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
    @species = "human"
    @pets = {:fishes => [], :dogs => [], :cats => []}
  end

  def say_species
    return "I am a #{self.species}."
  end

  def buy_fish(name)
    self.pets[:fishes] << Fish.new(name) 
  end

  def buy_cat(name)
    self.pets[:cats] << Cat.new(name)
  end

  def buy_dog(name)
    self.pets[:dogs] << Dog.new(name)
  end

  def walk_dogs
    self.pets[:dogs].map { |dog| dog.mood = "happy" }
  end

  def play_with_cats
    self.pets[:cats].map { |cat| cat.mood = "happy" }
  end

  def feed_fish
    self.pets[:fishes].map { |fish| fish.mood = "happy" }
  end

  def sell_pets
    self.pets.each do |pets, array|
      array.each { |pet| pet.mood = "nervous" }
    end

    self.pets.each { |pets, array| array.clear }
  end

  def list_pets
    fish_num = self.pets[:fishes].count
    cat_num = self.pets[:cats].count
    dog_num = self.pets[:dogs].count
    return "I have #{fish_num} fish, #{dog_num} dog(s), and #{cat_num} cat(s)."
  end

  def self.all
    @@all
  end

  def self.count
    self.all.count
  end

  def self.reset_all
    self.all.clear
  end




end