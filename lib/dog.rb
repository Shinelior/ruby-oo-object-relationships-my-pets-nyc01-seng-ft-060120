class Dog
  @@all = []
  attr_reader :name
  attr_accessor :owner,:mood 
  def initialize(name,owner,mood="nervous")
    @name = name 
    @owner = owner
    @mood = mood
    @@all << self 
  # code goes here
end
def self.all
  @@all
end
# def name=(name)
#   @name=name
#    return  error
 
# end
end