require 'pry'

class Owner
  attr_accessor 
  attr_reader :name, :species, :owner
  
  @@all = []
  
  def initialize(name = "Owner")
   # @name = name
    @owner = owner
    owner = Owner.new(name)
  #  @owner.name = name 
    @pets = []
    save 
  end 
  
  def save
    @@all << self 
  end 
  
  def species
    @species = "human" 
  end 
  
  def say_species
    "I am a #{species}."
  end 
  
  def self.all 
    @@all.uniq 
  end 
  
  def self.count
    self.all.count 
  end 
  
  def self.reset_all 
    @@all.clear
  end 
  
  def cats 
    @cats = Cat.all.select { |cat| cat.owner == self }
  end 
  
  def dogs 
    @dogs = Dog.all.select { |dog| dog.owner == self }
  end 
  
  def buy_cat(cat_name)
    @pets << Cat.new(cat_name, self)
  end
  
   def buy_dog(dog_name)
    dog = Dog.new(dog_name, self)
    @pets << dog
  end
  
  def walk_dogs
    @pets.collect { |pet| if pet = dog  
    then dog.mood == "happy" end }
  end 
  
  
  # describe "#walk_dogs" do
  #     it "walks the dogs which makes the dogs' moods happy" do
  #       dog = Dog.new("Daisy", @owner)
  #       @owner.walk_dogs
  #       expect(dog.mood).to eq("happy")
  #     end
  #   end
  
end


 
