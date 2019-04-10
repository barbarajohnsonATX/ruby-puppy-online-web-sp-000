class Dog 
  
@@all = []
  
  attr_accessor :name 
  
  def initialize(name)
    @name = name 
    @@all << self 
  end 
  
  def self.all 
    @@all.each do |name|
          new_array = []

      new_array = name.split('=')
      dog_name = new_array[1].chomp 
      puts "#{dog_name}"
    end 
  end 
  
  def self.clear_all 
    @@all = []
  end 
  
end 
