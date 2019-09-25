require 'pry'

class Owner
  attr_accessor 
  attr_reader :owner, :species
  
  @@all = []
  
  def initialize(name = "Owner")
    @owner = Owner.new(name)
   # @name = name
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
    @pets << Dog.new(dog_name, self)
  end
  
#  def walk_dogs
 #   @pets.collect { |pet| if self == dog, 
  
end


 
