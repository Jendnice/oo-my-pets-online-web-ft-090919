require 'pry'

class Owner
  attr_accessor 
  attr_reader :name, :species
  
  @@all = []
  @pets = []
  
  def initialize(name = "Owner")
    @name = name
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
  
  def buy_cat(cat)
    cat.owner = self 
    @pets << cat 
  end
  
  
end


 
