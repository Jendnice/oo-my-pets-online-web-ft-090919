require 'pry'

class Owner
  attr_accessor 
  attr_reader :name, :species
  
  @@all = []
  
  def initialize(name = "Owner")
    @name = name
    @pets = {:dogs => [], :cats => []}
    save 
  end 
  

 
