class Owner
  @@all = []
  attr_reader :name,:species
  
  def initialize(name,species="human")
    @name = name
    @species = species
     @@all << self 
  end

  def self.all 
    @@all 
  end 

  def say_species
   
    "I am a #{@species}."
  # code goes here
end

  def self.count
    array_name = @@all.map{|o| o.name}
    array_name.size
    
    end
def self.reset_all
   @@all = []
      
end
def cats
  Cat.all.select{|b| b.owner == self}
end
def dogs
  Dog.all.select{|b| b.owner == self}
end
def buy_cat(name)
  new_cat=Cat.new(name,self)
end
def buy_dog(name)
  new_dog=Dog.new(name,self)
end

  def walk_dogs
    dogs.each { |dog| dog.mood = "happy" }
  end
  
  def feed_cats
    cats.each { |dog| dog.mood = "happy" }
  end
  def sell_pets

    #if Dog.all =[] && Cat.all = []
    pets = dogs+cats
    pets.each {|pet| pet.mood = "nervous"}
    #dogs.each {|cat| cat.mood = "nervous"}
    
    pets.each {|pet| pet.owner= nil}
end
  def list_pets
    # pets = dogs+cats
    # pets.each do |p|  
      "I have #{self.dogs.size} dog(s), and #{self.cats.size} cat(s)."
    
  end
end
