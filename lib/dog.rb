class Dog 
  
@@all = []
  
  attr_accessor :name 
  
  def initialize(name)
    @name = name 
    @@all << self 
  end 
  
  def self.all 
    @@all.each do |name|
     new_name = name.to_s.gsub!(/.*?(?=")/im, "")
      puts "#{new_name}"
    end 
  end 
  
  def self.clear_all 
    @@all = []
  end 
  
end 
