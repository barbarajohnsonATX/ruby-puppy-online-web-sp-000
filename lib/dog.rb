class Dog 
  
@@all = []
  
  attr_accessor :name 
  
  def initialize(name)
    @name = name 
    @@all << self 
  end 
  
  def self.all 
    @@all.each do |name|
     name.gsub!(/.*?(?=")/im, "")
      puts "#{name}"
    end 
  end 
  
  def self.clear_all 
    @@all = []
  end 
  
end 
